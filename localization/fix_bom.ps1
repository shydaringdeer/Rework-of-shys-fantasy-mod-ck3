# PowerShell script to fix BOM encoding for CK3 localization files
Get-ChildItem -Path . -Filter *.yml -Recurse | ForEach-Object {
    $content = Get-Content $_.FullName -Raw
    [System.IO.File]::WriteAllText($_.FullName, $content, [System.Text.Encoding]::UTF8)
}
