#  Containerized Microservices with AWS EKS

This project demonstrates how to build, deploy, and manage containerized microservices using AWS services such as EKS (Elastic Kubernetes Service), ECR, CodePipeline, and ALB.


---

##  Objective

To design a scalable, secure, and automated infrastructure for deploying Docker-based microservices using Kubernetes on AWS.

---

##  Architecture Overview

The system architecture consists of the following:

- **Amazon EKS** – Kubernetes cluster to deploy and manage microservices.
- **Amazon ECR** – Stores Docker container images.
- **ALB (Application Load Balancer)** – Routes incoming traffic to appropriate Kubernetes services.
- **AWS CodePipeline** – Automates CI/CD from GitHub to EKS.
- **AWS CodeBuild** – Builds Docker images and deploys to EKS using `kubectl`.
- **Amazon VPC** – Isolated networking environment for EKS.
- **AWS CloudWatch** – Logs and monitoring.
- **Docker** – Containerization of Node.js microservices.

---

##  AWS Services Used

- ✅ Amazon EKS
- ✅ Amazon ECR
- ✅ Application Load Balancer (ALB)
- ✅ AWS CodePipeline
- ✅ AWS CodeBuild
- ✅ Amazon VPC
- ✅ AWS CloudWatch
- ✅ Docker

---

##  Step-by-Step Implementation

### 1.  Push Code to GitHub
Create a repo and push microservices code (Dockerfile, `buildspec.yml`, K8s manifests).

### 2.  Create ECR Repository

aws ecr create-repository --repository-name your-service-name

### 3. Provision EKS Cluster
Use AWS CloudShell or eksctl:

eksctl create cluster --name eks-cluster --region us-east-1 --nodes 2

### 4.  Set Up CodePipeline
Source: GitHub repo
Build: AWS CodeBuild project using buildspec.yml
Deploy: kubectl used inside CodeBuild to apply manifests to EKS

### 5. Deploy Microservices

kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

### 6.  Validate Deployment
kubectl get deployments
kubectl get svc
### 7.  Verify Load Balancer
Get ALB DNS using 
kubectl get svc
### Access the app via the external DNS.


