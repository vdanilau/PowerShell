$a = @()
$n = @(1..10)

$n | ForEach-Object {
    $a += Get-Random -maximum 100
}
Write-Output "Unsorted array is: $a"

for ($i=0; $i -lt $a.Length; $i++){
    for($j=0; $j -lt $a.Length-$i-1; $j++){
        if ($a[$j] -gt $a[$j+1]){
            $a[$j], $a[$j+1] = $a[$j+1], $a[$j]
        }
    }
}



# for($j=0; $j -lt $a.Length-1; $j++){
#     if ($a[$j] -gt $a[$j+1]){
#         $a[$j], $a[$j+1] = $a[$j+1], $a[$j]
#     }
# }

Write-Output "Sorted array is: $a"