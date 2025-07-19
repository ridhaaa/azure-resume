# Azure CDN Integration

## 🎯 Objective
Connect Azure CDN to the static website hosted in Azure Blob Storage for global access

---

## 🚫 Deployment Blocked
While deployng Azure CDN using Terraform, the following error occured:

```plaintext
Error: creating Profile: (Name "cdn-ridha-resume" / Resource Group "cloud-resume-rg"): cdn.ProfilesClient#Create: Failure sending request: StatusCode=400 -- Original Error: Code="BadRequest" Message="Free Trial and Student account is forbidden for Azure Frontdoor resources."
```
![Error](../screenshots/error-cdn.png)

This occurred because Azure CDN (FrontDoor SKU) is **not supported under Free Trial or Student subscriptions**.

---

## ✅ Terraform Configuration (Prepared)
Code to be added in main.tf once subscription limitations are not present:

```hcl
resource "azurerm_cdn_profile" "resume_cdn_profile" {
  name                = "cdn-ridha-resume"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "Standard_Microsoft"
}

resource "azurerm_cdn_endpoint" "resume_cdn_endpoint" {
  name                = "cdnresumeridha"
  profile_name        = azurerm_cdn_profile.resume_cdn_profile.name
  location            = azurerm_cdn_profile.resume_cdn_profile.location
  resource_group_name = azurerm_resource_group.rg.name

  origin {
    name      = "resumeweborigin"
    host_name = "ridharesumestorage.z13.web.core.windows.net"
  }

  is_http_allowed  = false
  is_https_allowed = true
}
```

---

## 📝 Future Plan
This CDN configuration will be deployed once the Azure subscription is upgraded to a Pay-As-You-Go plan.

Until then, the static site remains accessible via:
```
https://ridharesumestorage.z13.web.core.windows.net/
```

---

## ✅ Key Takeaway
Even though the CDN could not be deployed due to account limits, the configuration was prepared and tested via Terraform. This shows forward planning, readiness for scaling, and understanding of enterprise-level architecture.

The repo remains clean and ready to apply when CDN becomes available.
