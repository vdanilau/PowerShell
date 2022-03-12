
$ticket = "123123"

$sum1 = $null
$sum2 = $null

for ($i = 0; $i -lt 3; $i++){
    $sum1 += [convert]::ToInt32($ticket[$i], 10)
}
$sum1

for ($i = 3; $i -lt 6; $i++){
    $sum2 += [convert]::ToInt32($ticket[$i], 10)
}
$sum2

if ($sum1 -eq $sum2){
    Write-Output "You are the Winner!"
}
else {
    Write-Output "You are the Looser!"
}