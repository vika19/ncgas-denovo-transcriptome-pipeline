#PBS -k oe 
#PBS -m abe
#PBS -M 
#PBS -N RunVelvet3
#PBS -l nodes=1:ppn=2,vmem=200gb,walltime=3:00:00

##Move to correct WD
cd PWDHERE/Velvet

##load modules
module load velvet/1.2.10
module load oases/0.2.09

#input define
right=PWDHERE/input_files/right-norm.fq
left=PWDHERE/input_files/left-norm.fq

k1=35
k2=45
k3=55

##run code
oases oases.$k1 &
oases oases.$k2 &
oases oases.$k3 &

wait
