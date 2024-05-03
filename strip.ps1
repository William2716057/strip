#define input and output files
$input = "wordfile.txt" #adjust
$output = "cleanedText.txt" # adjust

#check if file exists
if (-not (Test-Path $input -PathType Leaf)) {
	Write-Host "'$input' not found"
	exit 1
}

#sort input, remove duplicates, save to new file
Get-Content $input | Sort-Object | get-Unique | Sort-Object | Set-Content $output

Write-Host "Saved to '$output'"
