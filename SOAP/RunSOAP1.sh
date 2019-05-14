#PBS -k oe 
#PBS -m abe
#PBS -M 
#PBS -N RunSOAP1
#PBS -l nodes=1:ppn=4,vmem=128gb,walltime=24:00:00

##Move to correct WD
cd PWDHERE

##load modules
module load soapdenovotrans/1.03

k1=35
k2=45
k3=55

##run code
SOAPdenovo-Trans-127mer all -s config_file -K $k1 -o output.$k1 &
SOAPdenovo-Trans-127mer all -s config_file -K $k2 -o output.$k2 &
SOAPdenovo-Trans-127mer all -s config_file -K $k3 -o output.$k3 &

wait
