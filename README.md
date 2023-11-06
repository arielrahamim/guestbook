# Guestbook Webpage as a Helm Chart

## Overview

originally from the Kubernetes examples project [https://github.com/kubernetes/examples/tree/master/guestbook-go]

The guestbook has been transformed into a Helm chart, as well as utilizing a Redis Helm chart for data storage. 
In addition to this, continuous integration (CI) with GitHub Actions and ArgoCD integration have been implemented to streamline the deployment and management processes.

This project was created as part of a learning journey towards becoming a DevOps engineer and serves as an excellent example of Kubernetes application deployment using modern best practices.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [ArgoCD](#argocd)
- [Guestbook](#guestbook)
- [Github Actions](#workflow)
## Prerequisites

Before you begin, ensure you have the following prerequisites:

- [Kubernetes](https://kubernetes.io/docs/setup/) cluster set up, minikube for example.
- [Helm](https://helm.sh/docs/intro/install/) installed.
  
## Installation

### ArgoCD
install argocd on the k8s cluster using the helm chart available at [ArtifactHub](https://artifacthub.io/packages/helm/argo/argo-cd?modal=install)
> helm repo add argo https://argoproj.github.io/argo-helm
> helm install my-argo-cd argo/argo-cd --version 5.50.1
make sure to the the kubectl port-forward command
> kubectl port-forward service/my-argo-cd-argocd-server -n default 8080:443


### Guestbook

> helm upgrade -i guestbook-release-1 helm-chart-guestbook --dependency-update

if using minikube 
> minikube tunnel

then you can acccess the webpage at localhost:80

### Workflow

currently, the github action workflow is used to build the docker image and upload it to my repo, which is available [here](https://hub.docker.com/repository/docker/arielrahamim/guestbook/general)

This project is licensed under the [MIT License](LICENSE).
