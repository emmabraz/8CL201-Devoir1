# Lister et supprimer les ressources
az resource list --subscription 0fcbc58f-03c0-4daa-9470-840cff312d29 --query "[].id" -o tsv
$resources = az resource list --subscription 0fcbc58f-03c0-4daa-9470-840cff312d29 --query "[].id" -o tsv
foreach ($resource in $resources)
{
  write-host $resource
  az resource delete --ids $resource
}