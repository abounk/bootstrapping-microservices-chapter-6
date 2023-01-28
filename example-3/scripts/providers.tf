# Initialises Terraform providers and sets their version numbers.

provider "azurerm" {
    version = "3.41.0"
    features {}
}

provider "tls" {
    version = "2.1.0"
}
