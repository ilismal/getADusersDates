Import-Module ActiveDirectory

Get-ADUser -Filter * -SearchBase "OU=UsersID,DC=redacteddomainname,DC=local" -Properties SAMAccountName, Enabled, displayName, c, manager, whenCreated, whenChanged,employeeID | Select SAMAccountName, Enabled, displayName, c, manager, whenCreated, whenChanged,employeeID | Sort SAMAccountName | Export-Csv ".\usuariosfecha.csv"
