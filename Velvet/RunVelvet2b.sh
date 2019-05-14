#PBS -k oe 
#PBS -m abe
#PBS -M 
#PBS -N RunVelvet2b
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
velvetg oases.$k4 -read_trkg yes -ins_length 400 &
velvetg oases.$k5 -read_trkg yes -ins_length 400 &
velvetg oases.$k6 -read_trkg yes -ins_length 400 &

wait
