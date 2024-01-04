sudo systemctl restart docker
minikube start
eval $(minikube docker-env)
alias kubectl="minikube kubectl --"
minikube status
