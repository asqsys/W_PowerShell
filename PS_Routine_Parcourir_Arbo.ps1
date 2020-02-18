$files = Get-ChildItem -Path .\* -Recurse -Include *.zip, *.jar

#----------------------------------------------------------------------------------------------------------------------------------
#Version 2 opérationnelle OK
#foreach ($file in get-ChildItem C:\Users\a-azzouzi\"OneDrive - AXA"\"AXA One IT"\QASolutions\00_DataComp\Delivery\*) {
$i =+1
foreach ($myfile in get-ChildItem $files) {
    try{
        ls $myfile.name
        Get-FileHash -Algorithm MD5 $myfile
        $i++
        #Write-Output "$i"
        }
    catch{

        }
}

#----------------------------------------------------------------------------------------------------------------------------------
#Version 0 opérationnelle OK
#foreach ($file in get-ChildItem C:\Users\a-azzouzi\"OneDrive - AXA"\"AXA One IT"\QASolutions\00_DataComp\Delivery\*) {
#    ls $myfile.name
#    Get-FileHash -Algorithm MD5 $myfile
#}

#----------------------------------------------------------------------------------------------------------------------------------
#Version 1 opérationnelle OK
#foreach ($myFile in Get-ChildItem $files){
    #ls $myFile.name
    #Get-FileHash -Algorithm MD5 $myFile
#}
