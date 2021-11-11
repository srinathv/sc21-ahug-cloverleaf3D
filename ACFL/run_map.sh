#! /usr/bin/env bash

#$ forge-probe
#Output file can be found at ./pacu08_probe.json. To install, please run

#    mkdir -p /home/srivad01/.allinea/map/metrics/pmu-events/known-hosts
#        cp ./pacu08_probe.json /home/srivad01/.allinea/map/metrics/pmu-events/known-hosts/

#going to use reverse connect for profiling and longer run (87 time steps)

#map --profile mpirun -n 64 --bind-to core ./clover_leaf_arm_NoMarch 
#map --profile --target-host=0x00000000430f0af0 --perf-metrics=iTLB-loads mpirun -n 64 --bind-to core ./clover_leaf_arm_NoMarch 
PERFS='L1-dcache-load-misses;branch-load-misses'
map --profile --target-host=0x00000000430f0af0 --perf-metrics=${PERFS} mpirun -n 64 --bind-to core ./clover_leaf_arm_NoMarch 


