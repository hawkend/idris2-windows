#
# Make sure that the configuration is placed in the root directory!
#

$configBuilder = [System.Text.StringBuilder]""

$rootPath = $pwd.Path
# PATH
$idrisPath = $rootPath + "\idris2\.idris2"
# IDRIS2_DATA
$idrisData = $rootPath + "\idris2\bootstrap\idris2-0.2.0\support"
# IDRIS2_LIBS
$idrisLibs = $rootPath + "\idris2\bootstrap\idris2-0.2.0\lib"
# IDRIS2_PREFIX
$idrisPrefix = $rootPath + "\idris2\bootstrap"
# IDRIS2_PATH
$idrisAppPath = $idrisPath + "\bin\idris2_app"
$schemePath = $rootPath + "\chez\bin\ta6nt"

[void]$configBuilder.AppendLine("@echo off")
[void]$configBuilder.AppendLine("set PATH=$idrisAppPath;%PATH%")
[void]$configBuilder.AppendLine("set PATH=$schemePath;%PATH%")
[void]$configBuilder.AppendLine("set IDRIS2_PATH=$idrisPath")
[void]$configBuilder.AppendLine("set IDRIS2_PREFIX=$idrisPrefix")
[void]$configBuilder.AppendLine("set IDRIS2_LIBS=$idrisLibs")
[void]$configBuilder.AppendLine("set IDRIS2_DATA=$idrisData")
[void]$configBuilder.AppendLine("`"$schemePath/scheme.exe`" --script `"$($idrisAppPath + '\idris2.so')`" %*")

$outFile = $idrisPath + "\bin\idris2.cmd"

Set-Content -Path $outFile -Value $configBuilder.ToString()
Write-Output "The configuration was created in:"
Write-Output $outFile
