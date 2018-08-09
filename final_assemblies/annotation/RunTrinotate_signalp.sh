#PBS -k oe 
#PBS -m abe
#PBS -M YOUREMAILHERE
#PBS -N RunAnnotatesigp
#PBS -l nodes=1:ppn=2,vmem=100gb,walltime=72:00:00

##Move to correct WD
cd PWDHERE/final_assemblies/annotation

module load trinotate

signalp -f short -n signalp.out transcripts.reformated.aa 
