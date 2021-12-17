$Inputs = Get-Content .\input.txt
$horizontal = 0
$depth = 0

ForEach ($Input in $Inputs) {
    $Direction, $Change = $Input.split(" ")
    switch ($Direction) {
        down {$depth += [int]$Change}
        up {$depth -= [int]$Change}
        forward {$horizontal += [int]$Change}
    }
}

Write-Output "Puzzle 1: The final horizontal position is : $($horizontal * $depth)" 

$Inputs = Get-Content .\input.txt
$horizontal = 0
$depth = 0
$aim = 0

ForEach ($Input in $Inputs) {
    $Direction, $Change = $Input.split(" ")
    switch ($Direction) {
        down {$aim += [int]$Change}
        up {$aim -= [int]$Change}
        forward {$horizontal += [int]$Change; $depth += ($aim * $Change)}
    }
}

Write-Output "Puzzle 2: The final horizontal position is : $($horizontal * $depth)" 