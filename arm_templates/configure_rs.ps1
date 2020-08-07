param(
    [Parameter(Mandatory=$true)]$AppName,
    [Parameter(Mandatory=$true)]$arm_template_name
)

Write-Host " Creating Resource Group :" $AppName

New-AzResourceGroupDeployment -Mode Incremental -ResourceGroupName  $AppName-rg -TemplateFile $arm_template_name