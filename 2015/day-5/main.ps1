#Puzzle 1
$AoC = Get-Content .\input.txt
$Rule3 = 'ab', 'cd', 'pq', 'xy'
$NiceStrings = 0
ForEach ($Item in $AoC) {
    if (($Item -replace '[^aeiou]', '').Length -lt 3) {
        continue
    }
    if ($Item -notmatch '(.)\1') {
        continue
    }
    if ([bool]($Rule3 | Where-Object {$Item -match $_})) {
        continue
    }
    $NiceStrings++
}
Write-Output "Number of nice strings is: $NiceStrings"

#Puzzle 2
$AoC = Get-Content .\input.txt
$Rule3 = 'ab', 'cd', 'pq', 'xy'
$NiceStrings = 0
ForEach ($Item in $AoC) {
    if ($Item -notmatch '(..).*\1') {
        continue
    }
    if ($Item -notmatch '(.).\1') {
        continue
    }
    $NiceStrings++
}
Write-Output "Number of nice strings is: $NiceStrings"