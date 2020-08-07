param(
    [Parameter(Mandatory=$true)]$AppName,
    [Parameter(Mandatory=$true)]$arm_template_name
)

Write-Host " Creating Storage Account :" st$AppName

New-AzStorageAccount -Mode Incremental -ResourceGroupName  $AppName-rg -TemplateFile $arm_template_name