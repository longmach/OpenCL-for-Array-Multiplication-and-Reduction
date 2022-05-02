# OpenCL Array Multiply, Multiply-Add, and Multiply-Reduce

Introduction

	There are many problems in scientific computing where you want to do arithmetic on multiple arrays of numbers (matrix manipulation, Fourier transformation, convolution, etc.). This project is in three parts:

    1- Multiply two arrays together using OpenCL:
    D[gid] = A[gid] * B[gid];
    Benchmark it against both input array size (i.e., the global work size) and the local work size (i.e., number of work-items per work-group).
    
    2- Multiply two arrays together and add a third using OpenCL:
    D[gid] = ( A[gid] * B[gid] ) + C[gid];
    Benchmark it against both input array size (i.e., the global work size) and the local work size (i.e., number of work-items per work-group).
    
    3- Perform the same array multiply as in #1, but this time with a reduction:
    Sum = summation{ A[:]*B[:] };
    Benchmark that against input array size (i.e., the global work size).

Files

    This project includes 11 files:
    - first.cpp         			(This implements the firs program to run Array Multiply)
	- first.cl						
	- second.cpp				(This implements the firs program to run Multiply-Add)
	- second.cl
	- third.cpp				(This implements the firs program to run Array Multiply-Reduce)
	- third.cl
	- submitloopFirst.bash			(bash file for loop of first part)
	- submitloopSecond.bash			(bash file for loop of second part)
	- submitloopThird.bash			(bash file for loop of third part)
	- cl.h					(header file for cl)
	- cl_platform.h				(header file for cl)


Testing

	- Unzip the files in your testing environment.
	- SSH to the DGX system.
	- To test in the DGX system, run the following command in the terminal: 
	sbatch submitloopFirst.bash	
	sbatch submitloopSecond.bas
	sbatch submitloopThird.bash	



