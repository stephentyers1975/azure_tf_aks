# Azure AKS build and Deployment demo utilising Hashcorp Terraform

## Intro

This is part of a series of mini projects to explore the capabilities of Terrraform as an IAC tool as well as to integrate DevOps and CI/CD practices into a full declarative Azure infrastructure rollout. This project will rollout a full Azure Kubernetes infrastructure with an associated Azure Container Registry. Docker will then be used to containerise a 3 tier DotNet application and then deploy to the AKS cluster built in the infrastructure stage. All of this will be executed via Terraform providers and not cli tools.

## Technologies Used

* Azure kubernetes Service - Microsoft's implementation of Kubernetes for container orchestration with built in Nginx ingress
* Docker - Container build
* Azure container registry - Private store for container container images
* Hashicorp Terraform - Cloud infrastructure provisioning
* Microsoft Azure - Cloud platform
* Github Actions - CI/CD
* DotNet - Demo Application from Mark Tinderholt Github
* Azure Key Vault - Secrets management

