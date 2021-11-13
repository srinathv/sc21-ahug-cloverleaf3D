# sc21-ahug-cloverleaf3D
Simple collection of scripts and files to aid in building/running/profiling cloverleaf3d

Base paper for CloverLeaf (and is extended for 3D case):
  https://cug.org/proceedings/cug2013_proceedings/includes/files/pap130.pdf

We'll see in directories:
  Makefiles
  Run scripts
  Performance Reports

And the current presentation. 


To get the Cloverleaf3D code and version:

    $git clone git@github.com:UK-MAC/CloverLeaf3D_ref.git
    $git checkout v1.1
    
Reference for builds and runs:
https://gitlab.com/arm-hpc/packages/-/wikis/packages/cloverleaf3d

The demostration is:
  Arm Compiler for Linux (ACFL) on TX2
  Fujitsu on A64FX
  Nvidia: nvHPC SDK on TX2 
    ** tried on Altair but miminal runs completed for different MPI counts.  
    

    
Good paper for performance analysis of Arm N1 CPUs:
  https://armkeil.blob.core.windows.net/developer/Files/pdf/white-paper/neoverse-n1-core-performance-v2.pdf
<img width="944" alt="image" src="https://user-images.githubusercontent.com/585481/141374796-e2ce4f9f-2b48-47f3-acb1-21b36aeeac64.png">

