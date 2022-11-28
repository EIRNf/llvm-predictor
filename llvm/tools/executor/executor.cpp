#include "llvm/ADT/Triple.h"

#include "llvm/IR/Module.h"

#include "llvm/IRReader/IRReader.h"

#include "llvm/Support/InitLLVM.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/WithColor.h"
#include "llvm/Support/SourceMgr.h"

#include <unistd.h>
#include <sys/wait.h>

using namespace llvm;

namespace {

  cl::opt<std::string>
  InputFile(cl::desc("<input bitcode>"), cl::Positional, cl::init("-"));


  cl::opt<bool> ForceCompiler("force-compilation",
                                 cl::desc("Force compilation: disable interpreter"),
                                 cl::init(false));
  
  cl::opt<bool> ImmediateExecution("immediate execution",
                                  cl::desc("immediately execute compiled program after compilation"),
                                  cl::init(false));

  cl::opt<bool> PrintTimerReport("print end to end component time",
                                  cl::desc("output metrics on how long different components take"),
                                  cl::init(false));
};

[[noreturn]] static void reportError(SMDiagnostic Err, const char *ProgName) {
  Err.print(ProgName, errs());
  exit(1);
}

std::string remove_extension(std::string input, std::string ext){
  
  if (input != ext &&
      input.size() > ext.size() &&
      input.substr(input.size() - ext.size()) == ".gz" )
  {
    // if so then strip them off
    input = input.substr(0, input.size() - ext.size());
  }
  return input;
}

int lli(std::string source_file){
  int pid,status;

  if (pid = fork()){
    waitpid(pid, &status, 0);

  } else {
    const char executable[] = "./lli";
    execl(executable, executable, source_file.c_str(), NULL);

  }
  return status;
}
int opt(std::string source_file, std::string final_executable){
  int pid,status;

  if (pid = fork()){
    waitpid(pid, &status, 0);

  } else {
    const char executable[] = "./opt";
    execl(executable, executable, source_file.c_str() ,"-o", final_executable.c_str(), NULL);

  }
  return status;

}
int execute_binary(std::string final_executable){

}



int main(int argc, char **argv, char * const *envp) {
    InitLLVM X(argc, argv);


    cl::ParseCommandLineOptions(argc, argv,
                            "llvm bitcode analyzer for dynamic compilation and execution or interpretation \n");

    std::string original_source_file = InputFile;

    // Old lli implementation based on ExecutionEngine and MCJIT.
    //LLVMContext Context;

    // Intake a LLVM IR file
    // Load the bitcode...
    // SMDiagnostic Err;
    // std::unique_ptr<Module> Owner = parseIRFile(InputFile, Err, Context);
    // Module *Mod = Owner.get();
    // if (!Mod)
    //     reportError(Err, argv[0]);


    // Decide whether it can be interpreted, jitted, or should be compiled and executed
    // Decide based on history
    // Persist program hash and runtime info
    // Decide based on static analysis
    // Decide based on other heuristic




    // Interpreter Path
    if (!ForceCompiler){
      lli(original_source_file);
    }

    // JIT Path

    // Compiled and then Execute Path
    if (ForceCompiler){
      std::string final_executable = remove_extension(original_source_file, ".ll"); //what is the final string
      opt(original_source_file, final_executable);
      execute_binary(final_executable);
    }

}
