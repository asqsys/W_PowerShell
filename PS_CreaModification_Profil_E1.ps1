#Création du fichier profile
if (!(Test-Path -Path $PROFILE ))
{ New-Item -Type File -Path $PROFILE -Force }

#Utilisation du script SetAlias pour l'alimenter