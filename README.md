# Projeto P2 - Gerência de Configuração

## Objetivo

Este projeto tem como objetivo demonstrar a implantação completa de uma aplicação utilizando práticas de Gerência de Configuração, Infraestrutura como Código (IaC), Containerização, Automação de Deploy, Kubernetes e CI/CD na plataforma Microsoft Azure.

A solução contempla desde o provisionamento da infraestrutura até a disponibilização da aplicação em um cluster Kubernetes.

---

# Tecnologias utilizadas

## Infraestrutura

* Microsoft Azure
* Terraform
* Azure API Management
* Azure Virtual Machine
* Azure Database for PostgreSQL Flexible Server
* Azure Kubernetes Service (AKS)

## Containerização

* Docker
* Docker Hub

## Automação

* Ansible

## Kubernetes

* AKS
* Deployments
* Services
* Ingress NGINX
* Horizontal Pod Autoscaler (HPA)
* ResourceQuota
* LimitRange
* Liveness Probe
* Readiness Probe

## CI/CD

* GitHub Actions

## Backend

* NestJS
* TypeScript
* Sequelize
* PostgreSQL

## Frontend

* React
* Vite
* TypeScript

---

# Estrutura do projeto

```text
.
├── ansible
├── kubernetes
├── terraform
├── backend
└── frontend
```

---

# Infraestrutura criada

O Terraform realiza automaticamente a criação dos seguintes recursos:

* Resource Group
* Virtual Network
* Subnet
* Virtual Machine Linux
* PostgreSQL Flexible Server
* Azure API Management

---

# Containerização

Foram desenvolvidos Dockerfiles para:

* Backend
* Frontend

As imagens são publicadas no Docker Hub e utilizadas posteriormente pelo Kubernetes.

---

# Automação com Ansible

O Ansible é responsável por:

* Instalar Docker na máquina virtual.
* Clonar os repositórios.
* Construir as imagens Docker.
* Executar os containers.

---

# Kubernetes

A aplicação foi implantada no Azure Kubernetes Service (AKS).

Recursos utilizados:

* Namespace
* Deployments
* Services
* Ingress
* ConfigMap
* Secret
* Horizontal Pod Autoscaler
* ResourceQuota
* LimitRange

Os Deployments utilizam Rolling Update e duas réplicas para garantir alta disponibilidade.

---

# API Gateway

Foi utilizado o Azure API Management para publicação da API e gerenciamento do acesso.

---

# CI/CD

Foi implementado um pipeline utilizando GitHub Actions responsável por automatizar o processo de build e publicação das imagens Docker.

---

# Execução

## Terraform

```bash
cd terraform

terraform init

terraform plan

terraform apply
```

## Ansible

```bash
cd ansible

ansible-playbook -i hosts.ini playbooks/deploy.yml
```

## Kubernetes

```bash
kubectl apply -k kubernetes/
```

---

# Verificações

Pods

```bash
kubectl get pods -A
```

Nodes

```bash
kubectl get nodes
```

Ingress

```bash
kubectl get ingress -A
```

HPA

```bash
kubectl get hpa -A
```

---

# Aplicação

Frontend

```
http://20.80.12.176/login
```

Swagger

```
http://20.80.12.176/api
```

---

# Autor

Junior Silva Gomes

CEFET/RJ

Disciplina: Gerência de Configuração
