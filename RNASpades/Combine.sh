source ../setup_files/kmers

sed "s/>/>RNASpades_$k1_/g" $k1/transcripts.fasta > ../final_assemblies/RNASpades.fa
echo "$k1 done"
sed "s/>/>RNASpades_$k2_/g" $k2/transcripts.fasta >> ../final_assemblies/RNASpades.fa
echo "$k2 done"
sed "s/>/>RNASpades_$k3_/g" $k3/transcripts.fasta >> ../final_assemblies/RNASpades.fa
echo "$k3 done"
sed "s/>/>RNASpades_$k4_/g" $k4/transcripts.fasta >> ../final_assemblies/RNASpades.fa
echo "$k4 done"
sed "s/>/>RNASpades_$k5_/g" $k5/transcripts.fasta >> ../final_assemblies/RNASpades.fa
echo "$k5 done"
sed "s/>/>RNASpades_$k6_/g" $k6/transcripts.fasta >> ../final_assemblies/RNASpades.fa
echo "$k6 done"
echo "DONE"
