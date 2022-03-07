# Chocolatey

Chocolatey is software management automation for Windows that wraps installers, executables, zips, and scripts into compiled packages.

## Packages
The script includes the following packages:
1. powershell-core
2. git
3. vscode
4. terraform
5. azure-cli
6. az.powershell
7. awstools.powershell
8. awscli

## Installation

1. First, ensure that you are using an administrative shell
2. run Set-ExecutionPolicy AllSigned or Set-ExecutionPolicy Bypass -Scope Process.

```bash
Set-ExecutionPolicy AllSigned
```
Or

```bash
Set-ExecutionPolicy Bypass -Scope Process
```

3. Using PowerShell, navigate to the file location and run the chocolately.ps1 executable 
```bash
.\chocolatey.ps1
```
4. After successfully installing chocolately, run the build.ps1 executable

```bash
.\build.ps1
```


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[MIT](https://choosealicense.com/licenses/mit/)