Import-Module .\ConsoleFunctions.psd1

[ConsoleClassLibrary.ConsoleFunctions+COLORREF] $PS_DARKRED = [System.Drawing.Color]::FromArgb(0xff800000)

$outHandle = Get-StdHandle (-11)
$bufferInfoEx = [ConsoleClassLibrary.ConsoleFunctions+CONSOLE_SCREEN_BUFFER_INFO_EX]::Create()
Get-ConsoleScreenBufferInfoEx -hConsoleOutput $outHandle -lpConsoleScreenBufferInfoEx ([ref] $bufferInfoEx)
$bufferInfoEx.ColorTable[5] = $PS_DARKRED
Set-ConsoleScreenBufferInfoEx -hConsoleOutput $outHandle -lpConsoleScreenBufferInfoEx $bufferInfoEx

Write-Information 'done.'
