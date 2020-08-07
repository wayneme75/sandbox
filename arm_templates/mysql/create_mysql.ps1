param(
    [Parameter(Mandatory=$true)]$SrvName,
    [Parameter(Mandatory=$true)]$arm_template_name
)

Write-Host " Creating MySQL :" $SrvName

#New-AzResourceGroupDeployment -Mode Incremental -ResourceGroupName  $AppName-rg -TemplateFile $arm_template_name
$Password = Read-Host -Prompt 'Please enter your password' -AsSecureString
New-AzMySqlServer -Name mydemoserver -ResourceGroupName myresourcegroup -Sku GP_Gen5_2 -GeoRedundantBackup Enabled -Location westus -AdministratorUsername myadmin -AdministratorLoginPassword $Password