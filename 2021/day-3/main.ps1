$Inputs = Get-Content .\input.txt

$Gamma = ''
$Epsilon = ''

For ($i = 0; $i -lt $Inputs[0].Length; $i++) {
    $Zeroes = 0
    $Ones = 0

    ForEach ($Input in $Inputs) {
        switch ($Input[$i]) {
            '0' {$Zeroes++}
            '1' {$Ones++}
        }
    }
    if ($Zeroes -gt $Ones) {
        $Gamma += '0'
        $Epsilon += '1'
    } else {
        $Gamma += '1'
        $Epsilon += '0'
    }
}

$Gamma = [convert]::ToInt32($Gamma, 2)
$Epsilon = [convert]::ToInt32($Epsilon, 2)
Write-Output "Puzzle 1: The power consumption of the submarine is: $($Gamma * $Epsilon)"

$Inputs = Get-Content .\input.txt
$Oxygen = ('.' * $Inputs[0].Length)
$CO2 = ('.' * $Inputs[0].Length)

For ($i = 0; $i -lt $Inputs[0].Length; $i++) {
    $OZeroes = 0
    $OOnes = 0
    $CZeroes = 0
    $COnes = 0

    ForEach ($Input in $Inputs) {
        if ($Input -match $Oxygen) {
            switch ($Input[$i]) {
                '0' {$OZeroes++}
                '1' {$OOnes++}
            }
        }
        if ($Input -match $CO2) {
            switch ($Input[$i]) {
                '0' {$CZeroes++}
                '1' {$COnes++}
            }
        }
    }
    $Oxygen = $Oxygen.Replace('.', '')
    if ($OOnes -ge $OZeroes) {
        $Oxygen += '1'
    } else {
        $Oxygen += '0'
    }
    if ($i -lt $Inputs[0].Length - 1) {
        $Oxygen += ('.'  * ($Inputs[0].Length - ($i+1)))
    }
    $CO2 = $CO2.Replace('.', '')
    if (($COnes + $CZeroes) -eq 1) {
        if ($COnes -gt $CZeroes) {
            $CO2 += '1'
        } else {
            $CO2 += '0'
        }
    } else {
        if ($COnes -ge $CZeroes) {
            $CO2 += '0'
        } else {
            $CO2 += '1'
        }
    }
    if ($i -lt $Inputs[0].Length - 1) {
        $CO2 += ('.'  * ($Inputs[0].Length - ($i+1)))
    }
}
$Oxygen = [convert]::ToInt32($Oxygen, 2)
$CO2 = [convert]::ToInt32($CO2, 2)
Write-Output "Puzzle 2: The life support rating of the submarine is: $($Oxygen * $CO2)"