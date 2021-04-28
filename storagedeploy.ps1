$rg = 'SneakersDeployResourceGroup'
New-AzResourceGroup -Name $rg -Location ukwest -Force

New-AzResourceGroupDeployment `
    -Name 'new-storage' `
    -ResourceGroupName $rg `
    -TemplateFile 'template.json' `
    -TemplateParameterFile 'parameters.json'
