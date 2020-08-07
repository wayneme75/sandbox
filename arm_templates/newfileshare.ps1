param(
    [Parameter(Mandatory=$true)]$AppName,
    [Parameter(Mandatory=$true)]$arm_template_name
)

Write-Host " Creating Fileshare : project data"

New-AzRmStorageShare
    -ResourceGroupName $AppName-rg
    -StorageAccountName st$AppName
    -TemplateFile $arm_template_name
    -Name "projectdata" 
    -QuotaGiB 1024 | Out-Null