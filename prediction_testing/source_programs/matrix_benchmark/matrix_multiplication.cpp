#include <stdio.h>
#include <stdlib.h>
#include <chrono>
#include <vector>
#include <fstream>
#include <iostream>
#include <string>

// global variable for the dimension of the matrix
int dim;
/*******************************************************
********* Normal multiplication of two matrices. *******
*******************************************************/

void multiply (	std::vector< std::vector<int> > &A, 
				std::vector< std::vector<int> > &B, 
				std::vector< std::vector<int> > &C, int d)
{
    for (int i = 0; i < d; i++)
    {
        for (int j = 0; j < d; j++)
        {
            for (int k = 0; k < d; k++)
            {
                C[i][j] += A[i][k]*B[k][j];
            }
        }
    }
}

// function that prints out the full matrix
void print_m (std::vector< std::vector<int> > m, int d)
{
	for (int i = 0; i < d; i++) 
	{
        for (int j = 0; j < d; j++) 
        {
             std::cout << "\t" << m[i][j];
        }
        std::cout << std::endl;
    }
}

/********************************************************************
************************* Main Function *****************************
********************************************************************/

int main (int argc, char* argv[])
{
	// ensure proper usage
	if (argc != 2)
	{
		std::cout << "Usage: ./strassen dimension\n";
		return 1;
	}

	// ensure no negative dimensions of the array
	dim = atoi(argv[1]);
	if (dim < 1)
	{
		std::cout << "Dimension has to be greater than 0.\n";
		return 2;
	}

	// vector for the inside of the matrices
	std::vector<int> inside (dim);

	// initialize matrices to be multiplied
	std::vector< std::vector<int> > A (dim, inside);
	std::vector< std::vector<int> > B (dim, inside);
	std::vector< std::vector<int> > C (dim, inside);

    // iterate over lines of file and add them to matrices A,B
    int min = 0;
    int max = 100;
    int range = max - min + 1;

    for (int j = 0; j < dim; j++){
        for (int i = 0; i < dim; i++)
        {
                A[i][j] = rand() % range + min;
                B[i][j] = rand() % range + min;            
        }
    }
  

	// namespace for timing function
	using namespace std::chrono;
	
	// time functions
	/*    high_resolution_clock::time_point start1 = high_resolution_clock::now();	   
	**	  multiply(A, B, C, dim);
	**    high_resolution_clock::time_point end1 = high_resolution_clock::now();
	**    auto duration1 = duration_cast<microseconds>(end1 - start1).count();
	**    std::cout << "This took: "<< duration1 << " microseconds.\n";
	**/

	/*    high_resolution_clock::time_point start2 = high_resolution_clock::now();	   
	**	  strassen(A, B, C, dim);
	**	  high_resolution_clock::time_point end2 = high_resolution_clock::now();
	**    auto duration2 = duration_cast<microseconds>(end2 - start2).count();
	**    std::cout<< "This took: " << duration2 << " microseconds.\n";
	**/

	// run strassen
	multiply(A, B, C, dim);
    print_m(C, dim);

    
   	return 0;
}
