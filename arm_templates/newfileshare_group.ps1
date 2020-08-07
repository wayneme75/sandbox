param(
    [Parameter(Mandatory=$true)]$AppName
)
 
   Write-Host "Creating File Share:"$AppName

Get-AzContext

New-AzRmStorageShare -ResourceGroupName $AppName-rg -StorageAccountName st$AppName -Name "projectdata" -QuotaGiB 5 | Out-Null