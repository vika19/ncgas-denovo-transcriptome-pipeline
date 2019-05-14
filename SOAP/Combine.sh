k1=35
k2=45
k3=55
k4=65
k5=75
k6=85

sed "s/>/>SOAP.$k1./g" output.$k1.scafSeq | sed -E "s/>SOAP\.(.{2,3}\./SOAP_\1_/g" > ../final_assemblies/SOAP.fa
echo "$k1 done"
sed "s/>/>SOAP.$k2./g" output.$k1.scafSeq | sed -E "s/>SOAP\.(.{2,3}\./SOAP_\1_/g" >> ../final_assemblies/SOAP.fa
echo "$k2 done"
sed "s/>/>SOAP.$k3./g" output.$k1.scafSeq | sed -E "s/>SOAP\.(.{2,3}\./SOAP_\1_/g" >> ../final_assemblies/SOAP.fa
echo "$k3 done"
sed "s/>/>SOAP.$k4./g" output.$k1.scafSeq | sed -E "s/>SOAP\.(.{2,3}\./SOAP_\1_/g" >> ../final_assemblies/SOAP.fa
echo "$k4 done"
sed "s/>/>SOAP.$k5./g" output.$k1.scafSeq | sed -E "s/>SOAP\.(.{2,3}\./SOAP_\1_/g" >> ../final_assemblies/SOAP.fa
echo "$k5 done"
sed "s/>/>SOAP.$k6./g" output.$k1.scafSeq | sed -E "s/>SOAP\.(.{2,3}\./SOAP_\1_/g" >> ../final_assemblies/SOAP.fa
echo "$k6 done"
echo "DONE"
