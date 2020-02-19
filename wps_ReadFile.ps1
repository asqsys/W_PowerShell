#cd '.\OneDrive - AXA\AXA One IT\QASolutions\01_DigitalDataTesting\99_PowerShell'

#$regex = '^\d+\W(.*)\W\w+\W\w+.csv$'
$regex = '(^Object:\s+.*)'
$substitute_file_name = "SV_2504.csv"

foreach($line in Get-Content $args[0]) {
    if($line -match $regex){
        #Write-Host $line
        #Write-Host $matches[1]';'$substitute_file_name
        #Write-Host $matches[1] | Out-File -Append .\test.txt
    }
    else{
        $matches[1]+$line | Out-File -append -FilePath .\OutPut_R01.txt
    }
}

#Deuxième variance
##cd '.\OneDrive - AXA\AXA One IT\QASolutions\01_DigitalDataTesting\99_PowerShell'

##$regex = '^\d+\W(.*)\W\w+\W\w+.csv$'
#$regex = '(^Object:\s+.*)'
#$to_exclude = '(^Notes:\s+.*)'
#$substitute_file_name = 'SV_2504.csv'

#foreach($line in Get-Content $args[0]) {
#    if ($to_exclude -match $line){

#    }
#    else{
#        $matches[1]+$line | Out-File -append -FilePath .\OutPut_R01.txt
#    }
#}
