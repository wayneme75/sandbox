
param(
    [Parameter(Mandatory=$true)]$location,
    [Parameter(Mandatory=$true)]$AppName,
    [Parameter(Mandatory=$true)]$SvcLevel,
    [Parameter(Mandatory=$true)]$AppOwner,
    [Parameter(Mandatory=$true)]$CostCenter,
    [Parameter(Mandatory=$true)]$Requester,
    [Parameter(Mandatory=$true)]$Recovery
    #[Parameter(Mandatory=$true)]$subsid
)

# this is the tenant ID neeeds to change as we move to non stage tenant
#$tenantID = "f266472c-48b5-487c-89f1-adc7ddf98e51"
#Write-Host $subsid

#if (!(Get-Module -ListAvailable -Name Az.Resources)) {
#    Write-Host "Installing Az Resources module"
#    Install-Module -Name Az.Resources -Scope CurrentUser -Force
#    Install-Module -Name Az.Accounts -Scope CurrentUser -Force
#} else
#{
   Write-Host "Creating Storage Account:"$AppName
#}
Get-AzContext

#Set-AzContext -SubscriptionId $subsid -Force


New-AzStorageAccount -ResourceGroupName $AppName-rg -Location $location -name st$AppName -SkuName Standard_LRS -Kind StorageV2 -Tag @{"ApplicationName"= $AppName;"CostCenter" = $CostCenter; "ServiceLevel" = $SvcLevel;"ApplicationOwner"=$AppOwner;"Requester"=$Requester;"Recovery"=$Recovery}
