k1=35
k2=45
k3=55
k4=65
k5=75
k6=85


sed "s/>/>Velvet.$k1./g" oases.$k1/transcripts.fa | sed -E "s/>Velvet\.(.{2,3})\./>Velvet_\1_/g" | sed 's/\///g' > ../final_assemblies/Velvet.fa
echo "$k1 done.."
sed "s/>/>Velvet.$k2./g" oases.$k2/transcripts.fa | sed -E "s/>Velvet\.(.{2,3})\./>Velvet_\1_/g" | sed 's/\///g' >> ../final_assemblies/Velvet.fa
echo "$k2 done.."
sed "s/>/>Velvet.$k3./g" oases.$k3/transcripts.fa | sed -E "s/>Velvet\.(.{2,3})\./>Velvet_\1_/g" | sed 's/\///g' >> ../final_assemblies/Velvet.fa
echo "$k3 done.."
sed "s/>/>Velvet.$k4./g" oases.$k4/transcripts.fa | sed -E "s/>Velvet\.(.{2,3})\./>Velvet_\1_/g" | sed 's/\///g' >> ../final_assemblies/Velvet.fa
echo "$k4 done.."
sed "s/>/>Velvet.$k5./g" oases.$k5/transcripts.fa | sed -E "s/>Velvet\.(.{2,3})\./>Velvet_\1_/g" | sed 's/\///g' >> ../final_assemblies/Velvet.fa
echo "$k5 done.."
sed "s/>/>Velvet.$k6./g" oases.$k6/transcripts.fa | sed -E "s/>Velvet\.(.{2,3})\./>Velvet_\1_/g" | sed 's/\///g' >> ../final_assemblies/Velvet.fa
echo "$k6 done.."

