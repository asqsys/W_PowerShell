#Create Alias for Directory

Function f_CT_Build {#CT = Compare Tool
    Set-Location -LiteralPath C:\Users\a-azzouzi\'OneDrive - AXA'\'AXA One IT'\QASolutions\00_DataComp\Delivery\CompareToolDeployed
    }

Set-Alias -Name _CT_Build -Value f_CT_Build

Function f_PF_PostGres {#PF=Program Files
    Set-Location -LiteralPath C:\'Program Files'\PostgreSQL
    }

Set-Alias -Name _BD_PostGres -Value f_PF_PostGres

Function f_Start_PostGres {#PF=Program Files
    Set-Location -LiteralPath C:\'Program Files'\PostgreSQL\11\'pgAdmin 4'\bin\
    }

Set-Alias -Name _Start_PostGres -Value f_Start_PostGres

Function f_Start_V00 {#PF=Program Files
    Set-Location -LiteralPath C:\Users\a-azzouzi\'OneDrive - AXA'\'AXA One IT'\QASolutions\00_DataComp\Delivery\CompareToolVersion\V00
    }

Set-Alias -Name _v00 -Value f_Start_V00

function f_Python_workspace{
    set-location -LiteralPath C:\Users\a-azzouzi\'OneDrive - AXA'\'AXA One IT'\QASolutions\99_VSW_PROG\01_Python_WS
    }

Set-Alias -Name _pyw -Value f_Python_workspace