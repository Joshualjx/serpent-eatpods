# expjourney-serpent
Simple setup using minikube

## Prerequisites

- [Minikube](https://github.com/kubernetes/minikube)
- [kubectl](https://kubernetes.io/docs/tasks/tools/)
- [Virtualization Software compatible with Minikube](https://minikube.sigs.k8s.io/docs/drivers/) (Parallels, VirtualBox, Hyperkit ecc). 


## Walkthrough

### Starting Minikube

Run

```minikube start```

### Setup kubernetes namespace and deployment

```kubectl apply -f kube-setup.yaml```

This will create the namespace "namespace1" and a deployment creating 5 pods within this "namespace1".

To check the output you can run the following commands:

```
kubectl get pods -n namespace1

kubectl get deployments -n namespace1
```

### Build the serpent application

Run 

```
source ~/.profile

cd serpent

go build -o serpent
```

The will build the serpent application.

### Run the serpent application

Run  

```./serpent```

and the game will start, eating the pods within namespace1.






