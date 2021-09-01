cls
#Pega o serial da maquina e adiciona o N 
$serial = (Get-CimInstance Win32_BIOS).SerialNumber
$nome = "D$serial"

#Adiciona a maquina no dominio
Add-Computer -DomainName "gel-eng.local" -NewName $nome -Restart


