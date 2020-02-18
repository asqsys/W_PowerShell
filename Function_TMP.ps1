cls
#$Liste_des_process = netstat -ano | findstr :8080
#netstat -ano | findstr :8080

function f_Listen_To_RemotePort(){
    Param(
    [Parameter(Mandatory = $false, ParameterSetName = "Computer")]
    [String[]]
    $ComputerName,

    [Parameter(Mandatory = $false, ParameterSetName = "User")]
    [String[]]
    $UserName,

    [Parameter(Mandatory = $false)]
    [String]
    $Summary
    )
    Write-Output $Args[1]

    $Liste_des_process=Get-NetTCPConnection -State Established, Listen, TimeWait -RemotePort 8080
    $RG = '\s+(\d+$)'
    $Liste_des_process -match $RG
    $Matches
}

$Liste_des_process=Get-NetTCPConnection -State Established, Listen, TimeWait -RemotePort 8080
$RG = '\s+(\d+$)'
$Liste_des_process -match $RG
$Matches

f_Listen_To_RemotePort($Liste_des_process)

#Exemple de ligne de commande permettant d'avoir la liste des noms de propriétés d'une commande:
$Liste_des_process | Get-Member -MemberType Property -Name OwningProcess

#Get-NetTCPConnection -State Established, Listen, TimeWait -RemotePort 8080


#Liste des commandes relatives aux variables

Get-Command -Noun Variable | Format-Table -Property Name,Definition -AutoSize -Wrap

#Liste de toutes les variables systèmes & utilisateurs
Get-ChildItem env:

#pour avoir des informations sur les fichiers
Get-ChildItem -Recurse -Force | Measure-Object

#Pour avoir le détail
Get-ChildItem -Filter *.txt | Measure-Object -Property Length

Get-ChildItem .\Target_DuplicateLines_R01.txt | Measure-Object -Line -Word

Get-ChildItem -Filter *.txt | Measure-Object -Property length -Maximum -Minimum -Average -Sum | ft count, @{“Label”=”average size(KB)”;”Expression”={($_.average/1KB).tostring(0)}}

Get-Content -Path .\*.txt | Measure-Object -Line

#------------------------------------------------------------------
$FileData=@()
Get-ChildItem C:\Users\a-azzouzi\'OneDrive - AXA'\'AXA One IT'\QASolutions\00_DataComp\00_Data_Set\00_S_03_22\ -Include *.txt 
ForEach-Object {$FileData += New-Object PSObject -Property @{'FileName'=$_.Name;'Total Lines'=(Get-Content $_.FullName).Count}}