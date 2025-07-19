# ☁️ Cloud Resume Challenge (Azure)

Deploying a resume website on Azure using Terraform, GitHub Actions, and Application Insights. Focused on infrastructure, automation, and monitoring.

---

## 📌 Overview

- Static site hosted via Azure Blob + CDN  
- Backend counter via Azure Function + Table Storage  
- Infrastructure managed with Terraform  
- CI/CD via GitHub Actions  
- Monitoring with Application Insights

---

## 🛠️ Tech Stack

- Terraform (Azure Provider)  
- Azure Storage + CDN  
- Azure Function (Python/Node)  
- Azure Table Storage  
- GitHub Actions  
- Application Insights

---

## ✅ Tasks Completed

### Infrastructure
- [x] Wrote Terraform config (`main.tf`, `variables.tf`)
- [x] Deployed Storage Account, CDN, Azure Function
- [x] Set up Table Storage for backend

### Backend
- [x] Built Function to handle page view counter
- [x] Connected Function to Table Storage
- [x] Tested counter locally (Postman/CLI)

### CI/CD + Monitoring
- [x] Set up GitHub Actions for auto-deploy
- [x] Integrated Application Insights

---

## 📁 Structure

```plaintext
cloud-resume/
├── terraform/               
│   ├── main.tf
│   ├── provider.tf
│   ├── outputs.tf
|   └── variables.tf    

├── portfolio/              
│   ├── index.html
│   ├── secure-upload.html
│   ├── style.css
│   └── images/             
│
├── docs/                   
│   └── Azure-static-website.md
│
└── README.md               

```
## 📸 Screenshots

Located in [`infra/screenshots/`](infra/screenshots/), including:

- Terraform apply success  
- Live resume on Blob + CDN  
- Function test via Postman  
- GitHub Actions deploy log  
- Application Insights traces  
- Architecture diagram

---

## 🔗 Resources

- [Cloud Resume Challenge – Azure](https://cloudresumechallenge.dev/docs/the-challenge/azure/)  
- [Terraform Azure Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)  
- [GitHub Actions Docs](https://docs.github.com/en/actions)  
- [Application Insights Overview](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview)
