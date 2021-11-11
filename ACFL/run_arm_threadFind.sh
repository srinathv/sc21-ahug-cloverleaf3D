#! /usr/bin/env bash




#determent thread placement:
export OMP_DISPLAY_ENV=true
export OMP_DISPLAY_AFFINITY=true
export OMP_NUM_THREADS=1

mpirun -n 64 --bind-to core ./clover_leaf_arm_v8 &> clover.bindToCore.arm_v8.CORES.txt
mv clover.out clover.bindToCore.arm_v8.out

mpirun -n 64 ./clover_leaf_arm_v8 &> clover.arm_v8.CORES.txt
mv clover.out clover.arm_v8.out

unset OMP_PLACES
unset OMP_PROC_BIND

mpirun -n 64 --bind-to core ./clover_leaf_arm_v8 &> clover.bindToCore.unset.arm_v8.CORES.txt
mv clover.out clover.bindToCore.unset.arm_v8.out

mpirun -n 64 ./clover_leaf_arm_v8 &> clover.unset.arm_v8.CORES.txt
mv clover.out clover.unset.arm_v8.out

export OMP_PLACES=cores
export OMP_PROC_BIND=close

mpirun -n 64 --bind-to core ./clover_leaf_arm_v8 &> clover.bindToCore.set.arm_v8.CORES.txt
mv clover.out clover.bindToCore.set.arm_v8.out

mpirun -n 64 ./clover_leaf_arm_v8 &> clover.set.arm_v8.CORES.txt
mv clover.out clover.set.arm_v8.out


grep Wall *.txt 


####
#clover.arm_v8.CORES.txt: Wall clock    0.1772010326385498
#clover.bindToCore.arm_v8.CORES.txt: Wall clock    0.1773829460144043
#clover.bindToCore.set.arm_v8.CORES.txt: Wall clock    0.1752960681915283
#clover.bindToCore.unset.arm_v8.CORES.txt: Wall clock    0.1735470294952393
#clover.set.arm_v8.CORES.txt: Wall clock     13.83457708358765
#clover.unset.arm_v8.CORES.txt: Wall clock    0.1767201423645020

#Result
#ACFL just using "--bind-to core" for mpirun is good enough
