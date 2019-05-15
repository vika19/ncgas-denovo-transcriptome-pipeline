#PBS -k oe
#PBS -N RunSpades
#PBS -m abe
#PBS -M 
#PBS -l nodes=1:ppn=16,walltime=48:00:00,vmem=250gb

#set wd
cd PWDHERE/RNASpades

spades/intel/3.11.1
module load gcc/4.9.2
module load python/2.7.9

source ../setup_files/kmers

#reads
reads1=PWDHERE/input_files/left-norm.fq
reads2=PWDHERE/input_files/right-norm.fq

#run
rnaspades.py -k $k4 -1 $reads1 -2 $reads2 -o ./$k4 -t 31 -m 480 &
rnaspades.py -k $k5 -1 $reads1 -2 $reads2 -o ./$k5 -t 31 -m 480 &
rnaspades.py -k $k6 -1 $reads1 -2 $reads2 -o ./$k6 -t 31 -m 480 &

wait
