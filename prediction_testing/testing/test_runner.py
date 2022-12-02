import subprocess
import re
from dataclasses import dataclass
import numpy as np
import matplotlib.pyplot as plt

@dataclass
class RunResults:
    interpreter_microseconds: int
    jit_microseconds: int
    compiler_microseconds: int


def run_and_get_results(command):
    proc = subprocess.Popen( command.split(), stdout=subprocess.PIPE, shell=False,universal_newlines=True)
    (output, err) = proc.communicate()
    return get_runtimes(output)

def get_runtimes(output):
    benchmark_results = []; 
    benchmark_results = re.findall(r'\d+', output)


    results = RunResults(
        benchmark_results[0],
        benchmark_results[2],
        benchmark_results[4]
    )
    return results

def main():
    ## PRINT GRAPHS
    printGraphs = True

    # Run HelloWorld
    command = "./executor --num-runs=100 hello_world.bc "
    results = run_and_get_results(command,)
    print(command)
    print(results)

    if(printGraphs):
        fig = plt.figure()
        ax = fig.add_axes([0.1,0.3,0.4,0.4])
        columns = ['Interpreted', 'JIT', 'Compiled']
        #y_pos = np.arange(len(columns))
        #plt.ylim(0,1)

        height = [int(results.interpreter_microseconds), 
                            int(results.jit_microseconds), 
                            int(results.compiler_microseconds)]
        ax.bar(columns,height, width=.8)

        plt.savefig("hello_world.png")


    # Run MatrixMultiplication with increasing size
    total_results = []
    for x in range(1,12):
        expo = 2**x
        command = "./executor --num-runs=50  matrix_multiplication.bc -input-arguments='" + str(expo) + "'"
        results = run_and_get_results(command)
        total_results.append(results)
        print(command)
        print(results)

    # if(printGraphs):
    #     fig = plt.figure()
    #     ax = fig.add_axes([0.1,0.3,0.4,0.4])


    #     legend = ['Interpreted', 'JIT', 'Compiled']

    #     interpreted = []
    #     jit = []
    #     compiled = []

    #     columns = ['2', '4', '8']


    #     #y_pos = np.arange(len(columns))
    #     #plt.ylim(0,1)

    #     height = [int(results.interpreter_microseconds), 
    #                         int(results.jit_microseconds), 
    #                         int(results.compiler_microseconds)]
    #     ax.bar(columns,height, width=.8)

    #     plt.savefig("hello_world.png")


    # Run GraphExecution with increasing size


    # Run inneficient_loop
    command = "./executor --num-runs=100 inneficient_loop.bc "
    results = run_and_get_results(command)
    print(command)
    print(results)

    # Run local_value_numbering 
    command = "./executor --num-runs=100 local_value_numbering.bc "
    results = run_and_get_results(command)
    print(command)
    print(results)


if __name__ == "__main__":
    main()