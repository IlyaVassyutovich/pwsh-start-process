$PackageVersion = Read-Host "Gimme published version"
$Package = "\\agamemnon.ivh\private\vassyutovich.ilya\nyaget\pwsh-start-process.$PackageVersion.nupkg"
if (-not (Test-Path $Package)) {
	Write-Error @"
Package not found at
$Package
"@
	throw "Error occured."
}
dotnet nuget push $Package --source GitHub