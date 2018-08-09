#PBS -k oe 
#PBS -m abe
#PBS -M YOUREMAILHERE
#PBS -N RunAnnotate
#PBS -l nodes=1:ppn=1,vmem=100gb,walltime=12:00:00

##Move to correct WD
cd PWDHERE/final_assemblies/annotation

#please define what you'd like the name for your loci to be.  For example:
# name=Alat_
#will result in gene names with Alat_010494, Alat_395606, etc.  
#leave NO SPACE BETWEEN = and name!!! (see above example)

name=

./Annotate.sh -p $name
