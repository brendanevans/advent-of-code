#Puzzle 1
$Inputs = Get-Content .\input.txt
$Increases = 0
$Depth = 9999

ForEach ($Input in $Inputs) {
    if ([int]$Input -gt $Depth) {
        $Increases++
    }
    $Depth = $Input
}

Write-Output "Puzzle 1: The total number of time depth increases is: $Increases"

#Puzzle 2
$Inputs = Get-Content .\input.txt
$Increases = 0

For ($i = 1; $i -lt $Inputs.Length; $i++) {
    if (([int]$Inputs[$i-1] + [int]$Inputs[$i] + [int]$Inputs[$i+1]) -lt ([int]$Inputs[$i] + [int]$Inputs[$i+1] + [int]$Inputs[$i+2])) {
        $Increases++
    }
}

Write-Output "Puzzle 2: The total number of time depth increases is: $Increases"