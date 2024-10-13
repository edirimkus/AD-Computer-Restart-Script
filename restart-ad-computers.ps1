Import-Module ActiveDirectory
$computers = Get-ADComputer -Filter {Name -like "PS1111*" -or Name -like "PS2222*"} |Select-Object -ExpandProperty Name
Restart-Computer -ComputerName $computers -Force -AsJob
