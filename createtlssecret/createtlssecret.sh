# Create tls secret
kubectl create secret tls nginxsecret --key ./service-key.pem --cert ./service.pem
