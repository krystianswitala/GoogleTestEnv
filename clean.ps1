$oldPath = $env:Path
$env:Path += ";D:\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin"

Set-Location(".\build")
mingw32-make clean
Set-Location("..\")

$env:Path = $oldPath
