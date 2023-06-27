#!/bin/bash

#PBS -l nodes=s1:ppn2+s2:ppn=2

#PBS -l walltime=0:02:00
#PBS -o matsyshyn_mpi_hello.o${PBS_JOBID}
#PBS -e matsyshyn_mpi_hello.e${PBS_JOBID}
#PBS -N matsyshyn_mpi_hello

#PBS -t 1-100

id=`echo $PBS_JOBID | grep -oE '[0-9]*' | head -1`
output="${PBS_O_WORKDIR}/output/${id}.out"

ml icc
ml openmpi
mpirun ${PBS_O_WORKDIR}/hello >> $output