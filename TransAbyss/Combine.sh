source ../setup_files/kmers 

sed "s/>/>TransAb.$k1./g" $k1.transabyss.fa-final.fa | sed -E "s/>TransAb\.(.{2,3})\./>TransAb_\1_/g" > ../final_assemblies/TransAb.fa
echo "$k1 Done"
sed "s/>/>TransAb.$k2./g" $k1.transabyss.fa-final.fa | sed -E "s/>TransAb\.(.{2,3})\./>TransAb_\1_/g" >> ../final_assemblies/TransAb.fa
echo "$k2 Done"
sed "s/>/>TransAb.$k3./g" $k1.transabyss.fa-final.fa | sed -E "s/>TransAb\.(.{2,3})\./>TransAb_\1_/g" >> ../final_assemblies/TransAb.fa
echo "$k3 Done"
sed "s/>/>TransAb.$k4./g" $k1.transabyss.fa-final.fa | sed -E "s/>TransAb\.(.{2,3})\./>TransAb_\1_/g" >> ../final_assemblies/TransAb.fa
echo "$k4 Done"
sed "s/>/>TransAb.$k5./g" $k1.transabyss.fa-final.fa | sed -E "s/>TransAb\.(.{2,3})\./>TransAb_\1_/g" >> ../final_assemblies/TransAb.fa
echo "$k5 Done"
sed "s/>/>TransAb.$k6./g" $k1.transabyss.fa-final.fa | sed -E "s/>TransAb\.(.{2,3})\./>TransAb_\1_/g" >> ../final_assemblies/TransAb.fa
echo "$k6 Done"
echo "DONE"
