#PBS -k oe 
#PBS -m abe
#PBS -M 
#PBS -N RunVelvet1
#PBS -l nodes=1:ppn=2,vmem=200gb,walltime=3:00:00

##Move to correct WD
cd /N/dc2/projects/ncgas/scripts/transcriptome_pipeline/dev/SS_testing/test/Velvet

##load modules
module load velvet/1.2.10
module load oases/0.2.09

#input define
right=/N/dc2/projects/ncgas/scripts/transcriptome_pipeline/dev/SS_testing/test/input_files/right-norm.fq
left=/N/dc2/projects/ncgas/scripts/transcriptome_pipeline/dev/SS_testing/test/input_files/left-norm.fq

k1=35
k2=45
k3=55

##run code
velveth oases.$k1 $k1 -shortPaired -fastq -separate $left $right &
velveth oases.$k2 $k2 -shortPaired -fastq -separate $left $right &
velveth oases.$k3 $k3 -shortPaired -fastq -separate $left $right &

wait
