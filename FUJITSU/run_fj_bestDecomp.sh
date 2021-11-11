#! /usr/bin/env bash


export OMP_NUM_THREADS=1
mpirun -n 48 --bind-to core ./clover_leaf_fj
mv clover.out clover_leaf_fj.n48_t1.nt.out


export OMP_NUM_THREADS=2
mpirun -n 24 --bind-to core ./clover_leaf_fj
mv clover.out clover_leaf_fj.n24_t2.nt.out



export OMP_NUM_THREADS=4
mpirun -n 12 --bind-to core ./clover_leaf_fj
mv clover.out clover_leaf_fj.n12_t4.nt.out

export OMP_NUM_THREADS=8
mpirun -n 6 --bind-to core ./clover_leaf_fj
mv clover.out clover_leaf_fj.n6_t8.nt.out

export OMP_NUM_THREADS=6
mpirun -n 8 --bind-to core ./clover_leaf_fj
mv clover.out clover_leaf_fj.n8_t6.nt.out


export OMP_NUM_THREADS=12
mpirun -n 4 --bind-to core ./clover_leaf_fj
mv clover.out clover_leaf_fj.n4_t12.nt.out

export OMP_NUM_THREADS=24
mpirun -n 2 --bind-to core ./clover_leaf_fj
mv clover.out clover_leaf_fj.n2_t24.nt.out


export OMP_NUM_THREADS=24
mpirun -n 2 --bind-to core ./clover_leaf_fj
mv clover.out clover_leaf_fj.n2_t24.nt.out


grep Wal *.nt.out


#Data:
#clover_leaf_fj.n12_t4.nt.out: Wall clock  1.841449975967407
#clover_leaf_fj.n24_t2.nt.out: Wall clock  0.6108870506286621
#clover_leaf_fj.n2_t24.nt.out: Wall clock  6.001574039459229
#clover_leaf_fj.n48_t1.nt.out: Wall clock  0.1355831623077393
#clover_leaf_fj.n4_t12.nt.out: Wall clock  3.928580999374390
#clover_leaf_fj.n6_t8.nt.out: Wall clock  2.398106813430786
#clover_leaf_fj.n8_t6.nt.out: Wall clock  2.518579006195068

#Result
#Per node all MPI is best
