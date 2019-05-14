#PBS -k oe 
#PBS -m abe
#PBS -M 
#PBS -N RunVelvet3b
#PBS -l nodes=1:ppn=2,vmem=200gb,walltime=3:00:00

##Move to correct WD
cd /N/dc2/projects/ncgas/scripts/transcriptome_pipeline/dev/SS_testing/test/Velvet

##load modules
module load velvet/1.2.10
module load oases/0.2.09

#input define
right=/N/dc2/projects/ncgas/scripts/transcriptome_pipeline/dev/SS_testing/test/input_files/right-norm.fq
left=/N/dc2/projects/ncgas/scripts/transcriptome_pipeline/dev/SS_testing/test/input_files/left-norm.fq

k4=65
k5=75
k6=85

##run code
oases oases.$k4 &
oases oases.$k5 &
oases oases.$k6 &

wait
