Import-Module ActiveDirectory

Get-ADUser -Filter * -SearchBase "DC=redacteddomainname,DC=local" -Properties name, whenCreated, whenChanged | Select name, whenCreated, whenChanged | Export-Csv ".\dates.csv"
