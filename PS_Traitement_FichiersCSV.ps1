function f_get_nb_ligne{
    Param _file_input;
    Get-ItemProperty -Path .\_file_input;
}

New-Item -Path . -Name "Test.bat" -ItemType "file" -Value "@echo Création Fichier Output"
.\run.bat | Out-File -FilePath .\OUTPUT_Spring_Nginx.txt -ErrorAction SilentlyContinue

