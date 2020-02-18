#To get the first 5 lines of file
Get-Content -Path .\_C0001.csv -TotalCount 5
Get-ChildItem -Name *

Import-Csv .\12_NF_DB_540K.txt | Measure-Object
#Count    : 548211
#Average  : 
#Sum      : 
#Maximum  : 
#Minimum  : 
#Property : 

#Set-Alias --définir un alias
#Get-Alias -Definition * --lister l'ensemble des alias