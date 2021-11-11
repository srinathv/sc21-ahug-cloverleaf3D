#! /usr/bin/env bash


export OMP_NUM_THREADS=1
mpirun -n 64 --bind-to core ./clover_leaf_arm_NoMarch
mv clover.out clover_leaf_arm_NoMarch.n64_t1.nt.out


export OMP_NUM_THREADS=2
mpirun -n 32 --bind-to core ./clover_leaf_arm_NoMarch
mv clover.out clover_leaf_arm_NoMarch.n32_t2.nt.out



export OMP_NUM_THREADS=4
mpirun -n 16 --bind-to core ./clover_leaf_arm_NoMarch
mv clover.out clover_leaf_arm_NoMarch.n16_t4.nt.out

export OMP_NUM_THREADS=8
mpirun -n 8 --bind-to core ./clover_leaf_arm_NoMarch
mv clover.out clover_leaf_arm_NoMarch.n8_t8.nt.out

export OMP_NUM_THREADS=16
mpirun -n 4 --bind-to core ./clover_leaf_arm_NoMarch
mv clover.out clover_leaf_arm_NoMarch.n4_t16.nt.out


export OMP_NUM_THREADS=32
mpirun -n 2 --bind-to core ./clover_leaf_arm_NoMarch
mv clover.out clover_leaf_arm_NoMarch.n2_t32.nt.out

export OMP_NUM_THREADS=64
mpirun -n 1 --bind-to core ./clover_leaf_arm_NoMarch
mv clover.out clover_leaf_arm_NoMarch.n1_t64.nt.out

grep Wal *.nt.out


#Data:
#clover_leaf_arm_NoMarch.n16_t4.nt.out: Wall clock     1.614495038986206
#clover_leaf_arm_NoMarch.n1_t64.nt.out: Wall clock     5.762299060821533
#clover_leaf_arm_NoMarch.n2_t32.nt.out: Wall clock     7.090006113052368
#clover_leaf_arm_NoMarch.n32_t2.nt.out: Wall clock    0.5022699832916260
#clover_leaf_arm_NoMarch.n4_t16.nt.out: Wall clock     4.663526058197021
#clover_leaf_arm_NoMarch.n64_t1.nt.out: Wall clock    0.1772801876068115
#clover_leaf_arm_NoMarch.n8_t8.nt.out: Wall clock     3.048356056213379


#Result
#Per node all MPI is best
