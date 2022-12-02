#include "llvm/ADT/Triple.h"

#include "llvm/IR/Module.h"

#include "llvm/IRReader/IRReader.h"

#include "llvm/Support/InitLLVM.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/WithColor.h"
#include "llvm/Support/SourceMgr.h"

#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <errno.h>
#include <chrono>
#include <iostream>
#include <cstdio>
#include <signal.h>
#include <string>


using namespace std::chrono;
using namespace llvm;

//"Flush" caches variables
const size_t bigger_than_cachesize = 10 * 1024 * 1024;
long *p = new long[bigger_than_cachesize];


namespace {
  cl::opt<std::string>
  InputFile(cl::desc("<input-bitcode>"), cl::Positional, cl::init("-"));

  cl::list<std::string>
  InputArgv("input-arguments", cl::desc("<program arguments>..."));

  cl::list<std::string>
  lliOptions("lii-arguments", cl::desc("<lii arguments>..."));

  cl::list<std::string>
  clangOptions("clang-arguments", cl::desc("<clang arguments>..."));


  cl::opt<int> NumRuns("num-runs",
                                  cl::desc("Number of runs for testing"),
                                  cl::init(1));

  cl::opt<bool> GetBaseline("get-baseline",
                                 cl::desc("get empty execution overhead"),
                                 cl::init(false));

  //TODO: Fix me
  cl::opt<bool> UseInterpreter("use-interpreter",
                                 cl::desc("use-interpreter as well as default JIT"),
                                 cl::init(true));

  cl::opt<bool> ForceOnlyInterpreter("force-lli",
                                 cl::desc("Force lli: disable compiler"),
                                 cl::init(false));

  cl::opt<bool> ForceOnlyCompiler("force-compilation",
                                 cl::desc("Force compilation: disable interpreter"),
                                 cl::init(false));
  
  cl::opt<bool> NotImmediateExecution("not-immediate-execution",
                                  cl::desc("Dont immediately execute compiled program after compilation"),
                                  cl::init(false));



}

// [[noreturn]] static void reportError(SMDiagnostic Err, const char *ProgName) {
//   Err.print(ProgName, errs());
//   exit(1);
// }

std::string remove_extension(std::string input, std::string ext){
  
  if (input != ext &&
      input.size() > ext.size() &&
      input.substr(input.size() - ext.size()) == ".bc" )
  {
    // if so then strip them off
    input = input.substr(0, input.size() - ext.size());
  }
  return input;
}

void flush_cache(){

    // FLUSH CACHE???
    // When you want to "flush" cache. 
    for(size_t i = 0; i < bigger_than_cachesize; i++)
    {
      p[i] = rand();
    }

}


std::pair<int, uint> system_with_timing(std::string command)
{
    sigset_t blockMask, origMask;
    struct sigaction saIgnore, saOrigQuit, saOrigInt, saDefault;
    pid_t childPid;
    int status, savedErrno;
    uint final_duration = 0;


    /* The parent process (the caller of system()) blocks SIGCHLD
       and ignore SIGINT and SIGQUIT while the child is executing.
       We must change the signal settings prior to forking, to avoid
       possible race conditions. This means that we must undo the
       effects of the following in the child after fork(). */

    sigemptyset(&blockMask);            /* Block SIGCHLD */
    sigaddset(&blockMask, SIGCHLD);
    sigprocmask(SIG_BLOCK, &blockMask, &origMask);

    saIgnore.sa_handler = SIG_IGN;      /* Ignore SIGINT and SIGQUIT */
    saIgnore.sa_flags = 0;
    sigemptyset(&saIgnore.sa_mask);
    sigaction(SIGINT, &saIgnore, &saOrigInt);
    sigaction(SIGQUIT, &saIgnore, &saOrigQuit);

    auto start = high_resolution_clock::now();

    switch (childPid = fork()) {
    case -1: {/* fork() failed */
        status = -1;
        break;          /* Carry on to reset signal attributes */
    }
    case 0: { /* Child: exec command */

        /* We ignore possible error returns because the only specified error
           is for a failed exec(), and because errors in these calls can't
           affect the caller of system() (which is a separate process) */

        saDefault.sa_handler = SIG_DFL;
        saDefault.sa_flags = 0;
        sigemptyset(&saDefault.sa_mask);

        if (saOrigInt.sa_handler != SIG_IGN)
            sigaction(SIGINT, &saDefault, NULL);
        if (saOrigQuit.sa_handler != SIG_IGN)
            sigaction(SIGQUIT, &saDefault, NULL);

        sigprocmask(SIG_SETMASK, &origMask, NULL);


        execl("/bin/sh", "sh", "-c", command.c_str(), (char *) NULL);

        _exit(127);                     /* We could not exec the shell */
    }
    default: {/* Parent: wait for our child to terminate */

        /* We must use waitpid() for this task; using wait() could inadvertently
           collect the status of one of the caller's other children */

        while (waitpid(childPid, &status, 0) == -1) {
            if (errno != EINTR) {       /* Error other than EINTR */
                status = -1;
                break;                  /* So exit loop */
            }
        }
        break;
    }
    }
    auto stop = high_resolution_clock::now();

    auto duration = duration_cast<microseconds>(stop - start);

    final_duration = duration.count();




    /* Unblock SIGCHLD, restore dispositions of SIGINT and SIGQUIT */

    savedErrno = errno;                 /* The following may change 'errno' */

    sigprocmask(SIG_SETMASK, &origMask, NULL);
    sigaction(SIGINT, &saOrigInt, NULL);
    sigaction(SIGQUIT, &saOrigQuit, NULL);

    errno = savedErrno;

    return std::make_pair(status, final_duration);
}

int main(int argc, char **argv, char * const *envp) {
  InitLLVM X(argc, argv);


  cl::ParseCommandLineOptions(argc, argv,
                          "llvm bitcode analyzer for compilation and immediate execution or interpretation \n");

  std::string original_source_file = InputFile;
  ArrayRef<std::string> Args = InputArgv;
  ArrayRef<std::string> lliOpt = lliOptions;
  ArrayRef<std::string> clangOpt = clangOptions;

  // Old lli implementation based on ExecutionEngine and MCJIT.
  //LLVMContext Context;

  // Intake a LLVM IR file
  // Load the bitcode...
  // SMDiagnostic Err;
  // std::unique_ptr<Module> Owner = parseIRFile(InputFile, Err, Context);
  // Module *Mod = Owner.get();
  // if (!Mod)
  //     reportError(Err, argv[0]);

  if(GetBaseline){
    uint total =0 ;
    std::string final_call = ":";
    std::pair<int,uint> status_time;
    for (int i = 0; i < NumRuns; i++){
      status_time = system_with_timing(final_call.c_str());
      // print_statement = "";
      // print_statement.append(" Time taken by ");
      // print_statement.append(final_call);
      // print_statement.append(": ");
      // print_statement.append(std::to_string(status_time.second));
      // print_statement.append(" microseconds");

      total += status_time.second;
      
      // std::cout << print_statement<< std::endl;
    }

    std::cout << "Baseline: " << total/NumRuns << std::endl;
  }

  // Decide whether it can be interpreted, jitted, or should be compiled and executed
  // Core aspect of measuring the runtime of programs is Benchmarking vs Analysis
  // Benchmarking: Build a history of representative runtimes under certain configurations
  // Analysis: With information of inputs and the program itself make conclusions about the runtime of the program

  if(UseInterpreter){
    std::string final_call = "./lli --force-interpreter ";
    for (const auto &Option : lliOpt){
      final_call.append(" " + Option);
    }
    final_call.append(original_source_file);
    for (const auto &Arg : Args) {
      final_call.append(" " + Arg);
    }
    std::pair<int,uint> status_time;
    std::string print_statement;
    uint total =0 ;
    for (int i = 0; i < NumRuns; i++){
      status_time = system_with_timing(final_call.c_str());
      
      // print_statement = "";
      // print_statement.append(" Time taken by ");
      // print_statement.append(final_call);
      // print_statement.append(": ");
      // print_statement.append(std::to_string(status_time.second));
      // print_statement.append(" microseconds");

      total += status_time.second;
      
      // std::cout << print_statement<< std::endl;
    }
      std::cout << "lli Interpreter Average: " << total/NumRuns << std::endl;
      std::cout << "lli Interpreter NumRuns: " << NumRuns << std::endl;
  }


  // JIT Path
  if (ForceOnlyInterpreter || (!ForceOnlyInterpreter && !ForceOnlyCompiler )){
    std::string final_call = "./lli ";
    for (const auto &Option : lliOptions){
      final_call.append(" " + Option);
    }
    final_call.append(original_source_file);
    for (const auto &Arg : Args) {
      final_call.append(" " + Arg);
    }
    std::pair<int,uint> status_time;
    std::string print_statement;
    uint total =0 ;
    for (int i = 0; i < NumRuns; i++){
      status_time = system_with_timing(final_call.c_str());
      
      // print_statement = "";
      // print_statement.append(" Time taken by ");
      // print_statement.append(final_call);
      // print_statement.append(": ");
      // print_statement.append(std::to_string(status_time.second));
      // print_statement.append(" microseconds");

      total += status_time.second;
      
      // std::cout << print_statement<< std::endl;
    }
      std::cout << "lli JIT Average: " << total/NumRuns << std::endl;
      std::cout << "lli JIT NumRuns: " << NumRuns << std::endl;
  }
    


  // Compiled and then Execute Path
    if (ForceOnlyCompiler || (!ForceOnlyInterpreter && !ForceOnlyCompiler )){
      std::string final_executable = remove_extension(original_source_file, ".bc"); //what is the final string

      std::string compile_call = "/usr/bin/clang++ -std=c++11 -O3 -Wall ";
      for (const auto &Opt : clangOpt){
        compile_call.append(" " + Opt);
      }
      compile_call.append(original_source_file);
      compile_call.append(" -o ");
      compile_call.append(final_executable); 
      
      std::string final_call = "";
      if(!NotImmediateExecution){
          final_call.append(" && ");
          final_call.append(" ./");
          final_call.append(final_executable);
          for (const auto &Arg : Args) {          
            final_call.append( " " + Arg);
          }
      }

      std::pair<int,uint> status_time;
      std::string print_statement;
      uint total = 0;
      //Compile Once
      //status_time = system_with_timing(compile_call);
      //total += status_time.second;
      compile_call.append(final_call);
      for (int i = 0; i < NumRuns; i++){
        //Execute num runs
        status_time = system_with_timing(compile_call);
        
        // print_statement = "";
        // print_statement.append(" Time taken by ");
        // print_statement.append(final_call);
        // print_statement.append(": ");
        // print_statement.append(std::to_string(status_time.second));
        // print_statement.append(" microseconds");

        total += status_time.second;

        // std::cout << print_statement << std::endl;
      }
      std::cout << "Compiler + Execution Average: " << total/NumRuns << std::endl;
      std::cout << "Compiler + Execution NumRuns: " << NumRuns << std::endl;
    }

}

