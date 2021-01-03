@{
	RootModule           = "pwsh-start-process.psm1"
	CompatiblePSEditions = @("Core")
	PowerShellVersion    = "7.1.0"
	GUID                 = "7bd1e020-3c16-4f1b-923a-77da302ba560"

	ModuleVersion        = "0.0.1"

	Author               = "Ilya Vassyutovich"
	Copyright            = "(c) 2021 Ilya Vassyutovich."
	Description          = "TBD"

	FunctionsToExport    = @("Write-Greeting")
	
	PrivateData = @{
		PSData = @{
			PreRelease = "alpha0"
			LicenseUri = "https://github.com/IlyaVassyutovich/pwsh-start-process/blob/main/LICENSE"
			ProjectUri = "https://github.com/IlyaVassyutovich/pwsh-start-process"

			RepositoryMetadata = @{
				Type   = "git"
				Uri    = "https://github.com/IlyaVassyutovich/pwsh-start-process"
				Branch = "main"
			}
		}
	}
}