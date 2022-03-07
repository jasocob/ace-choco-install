[CmdletBinding()]
param (
    [ValidateNotNullOrEmpty()]
    $Packages = @(
        @{name = 'powershell-core'}
        @{name = 'git'}
        @{name = 'vscode'}
        @{name = 'terraform'}
        @{name = 'azure-cli'}
        @{name = 'az.powershell'}
        @{name = 'awstools.powershell'}
        @{name = 'awscli'}

    )
)

$validExitCodes = @(0, 3010)

foreach ($package in $Packages) {
    $command = "choco.exe upgrade $($package.name) -y --no-progress"

    if ($package.ContainsKey('args')) {
        $command += " $($package.args)"
    }

    Invoke-Expression -Command $command

    if ($LASTEXITCODE -notin $validExitCodes) {
        throw 'Chocolatey package(s) installation failed'
    }
}