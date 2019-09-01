$oldPath = $env:Path
$env:Path += ";D:\CMake\bin"

Set-Location(".\build")
cmake -G "MinGW Makefiles" ..\src
Set-Location("..\")

$env:Path = $oldPath
