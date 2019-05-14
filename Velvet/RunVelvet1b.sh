#PBS -k oe 
#PBS -m abe
#PBS -M 
#PBS -N RunVelvet1b
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
velveth oases.$k4 $k4 -shortPaired -fastq -separate $left $right &
velveth oases.$k5 $k5 -shortPaired -fastq -separate $left $right &
velveth oases.$k6 $k6 -shortPaired -fastq -separate $left $right &

wait
