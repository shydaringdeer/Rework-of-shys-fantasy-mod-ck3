$utf8BOM = New-Object System.Text.UTF8Encoding $true
Get-ChildItem -Path $PSScriptRoot -Recurse -Filter '*.yml' | ForEach-Object {
    $content = [System.IO.File]::ReadAllText($_.FullName)
    [System.IO.File]::WriteAllText($_.FullName, $content, $utf8BOM)
    Write-Host "BOM added: $($_.Name)"
}
