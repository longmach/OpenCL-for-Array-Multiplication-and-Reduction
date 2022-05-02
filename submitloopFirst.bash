#!/bin/bash
#SBATCH  -J  First
#SBATCH  -A  cs475-575
#SBATCH  -p  class
#SBATCH  --gres=gpu:1
#SBATCH  -o  first.out
#SBATCH  -e  first.err
#SBATCH  --mail-type=BEGIN,END,FAIL
#SBATCH  --mail-user=machl@oregonstate.edu
for  t  in 8 16 32 64 128 256 512
do
    for s in 1024 2048 4096 8192 16384 32768 65536 131072 262144 524288  1048576 2097152 4194304 8388608
    do
        g++   -DNMB=$s -DLOCAL_SIZE=$t first.cpp  -o first /usr/local/apps/cuda/10.1/lib64/libOpenCL.so.1.1 -lm -fopenmp
        ./first
    done
done