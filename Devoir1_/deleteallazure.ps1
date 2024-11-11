# Lister et supprimer les ressources 
az resource list --subscription 7e5b65cd-d857-44e9-a7c8-f425a082239f --query "[].id" -o tsv 
$resources = az resource list --subscription 7e5b65cd-d857-44e9-a7c8-f425a082239f --query "[].id" -o tsv
foreach ($resource in $resources)
{ 
  write-host $resource 
  az resource delete --ids $resource
}