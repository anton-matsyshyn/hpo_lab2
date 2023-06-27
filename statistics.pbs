#!/bin/bash

#PBS -l nodes=1:ppn=1
#PBS -l walltime=0:02:00

#PBS -N matsyshyn_mpi_statistics

input="${PBS_O_WORKDIR}/output/${id}.out"
output="${PBS_O_WORKDIR}/statistics/${id}.out"

s1count=`echo ssh s1 "cat ${input}" | grep -o s1. | wc -l`
s2count=`echo ssh s2 "cat ${input}" | grep -o s2. | wc -l`

echo "s1 count ${s1count}" >> $output
echo "s2 count ${s2count}" >> $output