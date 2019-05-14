#PBS -N TransAb1b
#PBS -m bea
#PBS -M 
#PBS -l nodes=1:ppn=10,walltime=12:00:00,vmem=100gb

#set wd
cd /N/dc2/projects/ncgas/scripts/transcriptome_pipeline/dev/SS_testing/test/TransAbyss

module load transabyss/2.0.1
module load igraph/python/0.7.1
module load blat
#run
reads1=/N/dc2/projects/ncgas/scripts/transcriptome_pipeline/dev/SS_testing/test/input_files/left-norm.fq
reads2=/N/dc2/projects/ncgas/scripts/transcriptome_pipeline/dev/SS_testing/test/input_files/right-norm.fq
OD=`pwd`

k4=65
k5=75
k6=85

transabyss -k $k4 --pe $reads1 $reads2 --outdir $OD --name $k4.transabyss.fa --threads 4 -c 12 
transabyss -k $k5 --pe $reads1 $reads2 --outdir $OD --name $k5.transabyss.fa --threads 4 -c 12 
transabyss -k $k6 --pe $reads1 $reads2 --outdir $OD --name $k6.transabyss.fa --threads 4 -c 12 

