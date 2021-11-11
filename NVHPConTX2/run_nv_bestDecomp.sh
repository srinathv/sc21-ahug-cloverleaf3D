#! /usr/bin/env bash


export OMP_NUM_THREADS=1
mpirun -n 64 --bind-to core ./clover_leaf_nv_1
mv clover.out clover_leaf_nv_1.n64_t1.nt.out


export OMP_NUM_THREADS=2
mpirun -n 32 --bind-to core ./clover_leaf_nv_1
mv clover.out clover_leaf_nv_1.n32_t2.nt.out



export OMP_NUM_THREADS=4
mpirun -n 16 --bind-to core ./clover_leaf_nv_1
mv clover.out clover_leaf_nv_1.n16_t4.nt.out

export OMP_NUM_THREADS=8
mpirun -n 8 --bind-to core ./clover_leaf_nv_1
mv clover.out clover_leaf_nv_1.n8_t8.nt.out

export OMP_NUM_THREADS=16
mpirun -n 4 --bind-to core ./clover_leaf_nv_1
mv clover.out clover_leaf_nv_1.n4_t16.nt.out


export OMP_NUM_THREADS=32
mpirun -n 2 --bind-to core ./clover_leaf_nv_1
mv clover.out clover_leaf_nv_1.n2_t32.nt.out

export OMP_NUM_THREADS=64
mpirun -n 1 --bind-to core ./clover_leaf_nv_1
mv clover.out clover_leaf_nv_1.n1_t64.nt.out

grep Wal *.nt.out


#Data:

#run 1:
#clover_leaf_arm_NoMarch.n64_t1.nt.out: Wall clock     1.682781934738159
#clover_leaf_nv_1.n16_t4.nt.out: Wall clock    0.4914188385009766
#clover_leaf_nv_1.n1_t64.nt.out: Wall clock     4.387691020965576
#clover_leaf_nv_1.n2_t32.nt.out: Wall clock     4.037954092025757
#clover_leaf_nv_1.n32_t2.nt.out: Wall clock    0.4171769618988037
#clover_leaf_nv_1.n4_t16.nt.out: Wall clock     2.542332887649536
#clover_leaf_nv_1.n8_t8.nt.out: Wall clock     1.369784116744995


#clover_leaf_nv_1.n16_t4.nt.out: Wall clock    0.4743208885192871
#clover_leaf_nv_1.n1_t64.nt.out: Wall clock     4.375727176666260
#clover_leaf_nv_1.n2_t32.nt.out: Wall clock     3.930622816085815
#clover_leaf_nv_1.n32_t2.nt.out: Wall clock    0.4359238147735596
#clover_leaf_nv_1.n4_t16.nt.out: Wall clock     2.595196962356567
#clover_leaf_nv_1.n8_t8.nt.out: Wall clock     1.466220855712891

#Result
#64 ranks does not run.  Not abvoe 32 ranks.  So 32 ranks + 2 threads is fastest time.
