# Create a role
kubectl create role developer --verb=create --verb=get --verb=list --verb=update --verb=delete --resource=pods

# Create a role binding

kubectl create rolebinding developer-binding-myuser --role=developer --user=myuser

# Add user credentials to kubeconfig file

kubectl config set-credentials myuser --client-key=myuser.key --client-certificate=myuser.crt --embed-certs=true

# Add the context

kubectl config set-context myuser --cluster=kubernetes --user=myuser
