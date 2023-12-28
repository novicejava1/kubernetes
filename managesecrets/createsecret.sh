kubectl create secret generic db-user-pass --from-file=./username.txt --from-file=./password.txt
# secret/db-user-pass created

$ kubectl create secret generic db-user-pass2 --from-literal=username=admin --from-literal=password='admin@1234'
#secret/db-user-pass2 created

$ kubectl get secret db-user-pass2 -o jsonpath='{.data}'
#{"password":"YWRtaW5AMTIzNA==","username":"YWRtaW4="}

# decode a base64 encoded string
$ echo "YWRtaW5AMTIzNA==" | base64 --decode

# encode a string to base64
$ echo -n 'admin' | base64
