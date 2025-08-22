# AKS-production-infra

This project demonstrates deploying a cloud application on a production-grade Azure AKS cluster using best practices in infrastructure automation, security and observability. 


## 🔧 Key Features

| **Features**                             | **Description**                                                                                  |
|-------------------------------------------|--------------------------------------------------------------------------------------------------|
| **Infrastructure as Code (IaC)** | Reusable Terraform modules for AKS, VNet etc...        |
| **Ingress & Security** | NGINX Ingress Controller with HTTPS via CertManager.                        |
| **DNS**        | Automated DNS record management with ExternalDNS.       |
| **Docker**                              | Docker build pipeline with push to ACR.      |
| **GitOps**                              | ArgoCD automates application deployments, keeping cluster state in sync with Git.     |
| **Monitoring & Observability**          | Prometheus for metrics collection and Grafana for real-time dashboards.     |
                                                    


## Install NGINX Ingress Controller 

```hcl
kubectl create namespace ingress-nginx
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.11.0/deploy/static/provider/cloud/deploy.yaml

kubectl get pods -n ingress-nginx

kubectl get svc -n ingress-nginx
```

## Install cert-manager 

```hcl
kubectl create namespace cert-manager
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.14.3/cert-manager.yaml

kubectl get pods -n cert-manager
```

## Route53 secret - AWS Credentials 

```hcl
kubectl create secret generic route53-credentials-secret \
  --from-literal=access-key-id=<AWS_ACCESS_KEY_ID> \
  --from-literal=secret-access-key=<AWS_SECRET_ACCESS_KEY> \
  -n cert-manager

kubectl get secret route53-credentials-secret -n cert-manager
```

## Cluster Issuer 

```hcl
kubectl apply -f cluster-issuer.yml
kubectl get clusterissuer letsencrypt-prod -o yml
```

## Ingress Class 

```hcl
kubectl apply -f ingressclass-nginx.yml
kubectl get ingressclass
```

## Application service

```hcl
kubectl apply -f service.yml
kubectl get svc
```

## Application Ingress 

```hcl
kubectl apply -f app-ingress.yml
```

## Certification 

```hcl
kubectl apply -f certificate.yml

kubectl get certificate tls-secret -n default
kubectl describe certificate tls-secret -n default
kubectl logs -l app=cert-manager -n cert-manager
kubectl get secret route53-credentials-secret -n cert-manager -o yaml
```





## 🎯 Outcome

End-to-end automated delivery pipeline where the app is securely accessible over HTTPS at a custom domain, continuously deployed and monitored with GitOps best practices.





