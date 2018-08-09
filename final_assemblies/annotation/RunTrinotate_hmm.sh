#PBS -k oe 
#PBS -m abe
#PBS -M YOUREMAILHERE
#PBS -N RunAnnotatehmm
#PBS -l nodes=1:ppn=2,vmem=100gb,walltime=72:00:00

##Move to correct WD
cd PWDHERE/final_assemblies/annotation

module load trinotate

hmmscan --cpu 16 --domtblout PFAM.out $TRINOTATEDB/Pfam-A.hmm transcripts.reformated.aa > pfam.log
