#Commande pour pouvoir trouver les Processus qui utilisent le port 8080
netstat -ano | findstr :8080
taskkill.exe /PID 1128 /PID 968 /PID 21280 /PID 1452 /F
taskkill.exe /PID 14648 /F
cls
Get-NetTCPConnection -State Established, Listen -RemotePort 8080
kill -Id 10824
Stop-Process -id 6204

# je liste les PID / sans doublons / je créé une boucle, pour alimenter le taskkill.exe

Stop-Process (,(netstat -ano | findstr :8080).split() | foreach {$[$.length-1]}) -Force

Stop-Process -id (Get-NetTCPConnection -LocalPort 8080) OwningProcess -Force

Stop-Process (,(Get-NetTCPConnection -State Established, Listen -RemotePort 8080)) -Force