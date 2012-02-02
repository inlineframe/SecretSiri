echo "-------Certificate creator by Inlineframe------"
echo "Step 1:" 
openssl genrsa -des3 -out ca.key 4096 
echo "Step 2:" 
openssl req -new -x509 -days 365 -key ca.key -out ca.crt
echo "Step 3:" 
openssl genrsa -des3 -out server.key 4096
echo "Step 4:------Warning!------" 
echo "Info: now enter the 1st common name: 'guzzoni.apple.com', and 2nd common name: 'IP_NDS_OF_SERVER' "
openssl req -new -key server.key -out server.csr
echo "Step 5:" 
openssl x509 -req -days 365 -in server.csr -CA ca.crt -CAkey ca.key -set_serial 01 -out server.passless.crt
echo "Step 6:" 
openssl rsa -in server.key -out server.key.insecure
echo "Step 7:" 
mv server.key server.key.secure
mv server.key.insecure server.passless.key
echo "Certificate Generator Done it's work, process to next step!" 
