#PBS -k oe 
#PBS -m abe
#PBS -M 
#PBS -N RunVelvet1
#PBS -l nodes=1:ppn=2,vmem=200gb,walltime=3:00:00

##Move to correct WD
cd PWDHERE/Velvet

source ../setup_files/kmers 

##load modules
module load velvet/1.2.10
module load oases/0.2.09

#input define
right=PWDHERE/input_files/right-norm.fq
left=PWDHERE/input_files/left-norm.fq

##run code
velveth oases.$k1 $k1 -shortPaired -fastq -separate $left $right &
velveth oases.$k2 $k2 -shortPaired -fastq -separate $left $right &
velveth oases.$k3 $k3 -shortPaired -fastq -separate $left $right &

wait
