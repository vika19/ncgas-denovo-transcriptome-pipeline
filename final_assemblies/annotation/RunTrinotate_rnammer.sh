#PBS -k oe 
#PBS -m abe
#PBS -M YOUREMAILHERE
#PBS -N RunAnnotaternammer
#PBS -l nodes=1:ppn=2,vmem=100gb,walltime=72:00:00

##Move to correct WD
cd PWDHERE/final_assemblies/annotation

module load trinotate

RnammerTranscriptome.pl --transcriptome transcripts.main.fa --path_to_rnammer /N/soft/rhel7/trinotate/rnammer-1.2/rnammer
