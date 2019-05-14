#PBS -k oe 
#PBS -m abe
#PBS -M 
#PBS -N RunVelvet2
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
velvetg oases.$k1 -read_trkg yes -ins_length 400 &
velvetg oases.$k2 -read_trkg yes -ins_length 400 &
velvetg oases.$k3 -read_trkg yes -ins_length 400 &

wait
