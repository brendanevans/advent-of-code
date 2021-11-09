#Puzzle 1
$AoC = (Get-Content .\input.txt)
$Total = 0
ForEach ($Item in $AoC) {
    [int]$Length, [int]$Width, [int]$Height = $Item.Split('x')
    $Sizes = @($Length, $Width, $Height) | Sort-Object
    $Total += ((2 * $Length * $Width) + (2 * $Width * $Height) + (2 * $Height * $Length)) + ($Sizes[0] * $Sizes[1])
}
Write-Output "Total wrapping paper required: $Total square feet"

#Puzzle 2
$AoC = (Get-Content .\input.txt)
$Total = 0
ForEach ($Item in $AoC) {
    [int]$Length, [int]$Width, [int]$Height = $Item.Split('x')
    $Sizes = @($Length, $Width, $Height) | Sort-Object
    $Total += (2 * $Sizes[0]) + (2 * $Sizes[1]) + ($Length * $Width * $Height)
}
Write-Output "Total ribbon required: $Total feet"