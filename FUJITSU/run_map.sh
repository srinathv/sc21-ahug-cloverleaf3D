#! /usr/bin/env bash

#$ forge-probe
#Output file can be found at ./pacu08_probe.json. To install, please run

#    mkdir -p /home/srivad01/.allinea/map/metrics/pmu-events/known-hosts
#        cp ./pacu08_probe.json /home/srivad01/.allinea/map/metrics/pmu-events/known-hosts/

#going to use reverse connect for profiling and longer run (87 time steps)

#map --profile --mpi="Generic" --np 48 --mpiargs="--bind-to core" ./clover_leaf_fj 

export ALLINEA_NO_TIMEOUT=1
export ALLINEA_NO_MPI_AUTODETECT=1

map --profile --mpi="Generic" --np 48 --mpiargs="--bind-to core" \
  --perf-metrics="SVE_INST_RETIRED;INST_RETIRED;SIMD_INST_RETIRED" \
  --target-host=0x00000000460f0010 \
 ./clover_leaf_fj 

