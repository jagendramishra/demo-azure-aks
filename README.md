# Azure terraform backend

az group create --name myResourceGroup --location centralindia

az storage account create \
  --name terraformbackendfordemo \
  --resource-group myResourceGroup \
  --location centralindia \
  --sku Standard_LRS \
  --encryption-services blob

az storage container create \
  --name tfstatedemo \
  --account-name terraformbackendfordemo

az storage account keys list --resource-group myResourceGroup --account-name terraformbackendfordemo

az storage blob service-properties update \
  --account-name terraformbackendfordemo \
  --enable-delete-retention true \
  --delete-retention-days 7


az storage blob service-properties update \
  --account-name terraformbackendfordemo \
  --delete-retention-policy days=7

az storage blob service-properties show --account-name terraformbackendfordemo

az storage account update --name terraformbackendfordemo --set kind=StorageV2

az storage account show --name terraformbackendfordemo --query "kind"

az storage blob list --container-name tfstatedemo --account-name terraformbackendfordemo --output table
