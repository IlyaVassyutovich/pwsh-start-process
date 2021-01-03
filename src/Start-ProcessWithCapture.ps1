function Start-ProcessWithCapture {
	[CmdletBinding()]
	param(
		[Parameter(Mandatory = $true, Position = 1)]
		[ValidateNotNullOrEmpty()]
		[ValidateScript(
			{ Test-Path $_ },
			ErrorMessage = "No file found at `"{0}`".")]
		[string]$Executable,

		[Parameter(ValueFromRemainingArguments, Position = 2)]
		[string[]]$ScriptArguments
	)

	Write-Warning "Unstable implementation."
	Write-Warning "Solution used to capture process' streams will block indefinitely upon reaching some amount of captured data."
	$ProcessStartInfo = New-Object System.Diagnostics.ProcessStartInfo
	$ProcessStartInfo.CreateNoWindow = $true
	$ProcessStartInfo.FileName = $Executable
	foreach ($Argument in $ScriptArguments) {
		$ProcessStartInfo.ArgumentList.Add($Argument)
	}
	$ProcessStartInfo.RedirectStandardOutput = $true
	$ProcessStartInfo.RedirectStandardError = $true

	$Process = [System.Diagnostics.Process]::Start($ProcessStartInfo)
	$StdErr = $Process.StandardError.ReadToEnd()
	$StdOut = $Process.StandardOutput.ReadToEnd()
	$Process.WaitForExit()

	return @{
		ExitCode = $Process.ExitCode
		StandardError = $StdErr
		StandardOutput = $StdOut
	}
}