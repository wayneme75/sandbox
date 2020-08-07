param(
    [Parameter(Mandatory=$true)]$AppName,
    [Parameter(Mandatory=$true)]$location,
    [Parameter(Mandatory=$true)]$arm_template_name
)

Write-Host " Creating Web App :" $AppName

#New-AzResourceGroupDeployment -Mode Incremental -ResourceGroupName  $AppName-rg -TemplateFile $arm_template_name
New-AzureRmWebApp -ResourceGroupName $AppName-rg -Name $AppName-ca00148d-web -Location $location -AppServicePlan "ASP-merurg-9acd"