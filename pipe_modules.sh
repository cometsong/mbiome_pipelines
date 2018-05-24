# load modules/env vars for compilation
. /projects/mbiomecore/local/devel/dev_env_init.sh

# load modules for pipeline venv
module unload python R
module load python/3.6.5
module swap gcc/4.9.2
module load R/3.4.4
module add bedtools
module add kent

R_base=/opt/software/helix/R/3.4.4
export CFLAGS+=" -I ${R_base}/include"
export LD_LIBRARY_PATH+=${R_base}/lib
