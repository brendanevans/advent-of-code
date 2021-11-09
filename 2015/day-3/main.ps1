#Puzzle 1
$AoC = (Get-Content .\input.txt).ToCharArray()
$x, $y = 0, 0
$Visited = New-Object System.Collections.Generic.List[System.Object]
$Visited.Add("$($x)x$($y)")
ForEach ($Item in $AoC) {
    switch ($Item) {
        '<' {$x--}
        '>' {$x++}
        '^' {$y++}
        'v' {$y--}
    }
    if ($Visited -notcontains "$($x)x$($y)") {
        $Visited.Add("$($x)x$($y)")
    }
}
Write-Output "Total houses visited: $($Visited.Count)"

#Puzzle 2
$AoC = (Get-Content .\input.txt).ToCharArray()
$SantaX, $SantaY, $RoboX, $RoboY = 0, 0, 0, 0
$Visited = New-Object System.Collections.Generic.List[System.Object]
$Visited.Add("$($SantaX)x$($SantaY)")
For ($i = 0; $i -lt $AoC.Count; $i++) {
    if ($i % 2 -eq 0) {
        switch ($AoC[$i]) {
            '<' {$RoboX--}
            '>' {$RoboX++}
            '^' {$RoboY++}
            'v' {$RoboY--}
        }
        if ($Visited -notcontains "$($RoboX)x$($RoboY)") {
            $Visited.Add("$($RoboX)x$($RoboY)")
        }
    } else {
        switch ($AoC[$i]) {
            '<' {$SantaX--}
            '>' {$SantaX++}
            '^' {$SantaY++}
            'v' {$SantaY--}
        }
        if ($Visited -notcontains "$($SantaX)x$($SantaY)") {
            $Visited.Add("$($SantaX)x$($SantaY)")
        }
    }
}
Write-Output "Total houses visited: $($Visited.Count)"