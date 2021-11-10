#Puzzle 1
$AoC = (Get-Content .\input.txt)
for ($i = 1; $i++) {
    $Md5 = New-Object -TypeName System.Security.Cryptography.MD5CryptoServiceProvider
    $Utf8 = New-Object -TypeName System.Text.UTF8Encoding
    [string]$Hash = ([System.BitConverter]::ToString($md5.ComputeHash($utf8.GetBytes("$($AoC)$($i)")))) -replace ('-','')
    if ($Hash.substring(0,5) -eq '00000') {
        $i
        break
    }
}

#Puzzle 2
$AoC = (Get-Content .\input.txt)
for ($i = 1; $i++) {
    $Md5 = New-Object -TypeName System.Security.Cryptography.MD5CryptoServiceProvider
    $Utf8 = New-Object -TypeName System.Text.UTF8Encoding
    [string]$Hash = ([System.BitConverter]::ToString($md5.ComputeHash($utf8.GetBytes("$($AoC)$($i)")))) -replace ('-','')
    if ($Hash.substring(0,6) -eq '000000') {
        $i
        break
    }
}