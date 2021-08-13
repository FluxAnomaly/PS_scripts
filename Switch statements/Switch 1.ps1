$MyCred = Get-Credential -Credential an458060ad    # Run this line once to store credentials.

$target = 'L4JKGWF2'
$target = 'xx'
$target = 'xx'

switch (Test-WSMan $target)
{
    {$_ -eq $true} {"WinRM service IS RUNNING on $_"}
    {$_ -eq $false} {"WinRM service is NOT running on $_"}
}

$test = Test-WSMan $target
switch ($test)
{
    {$test -eq $true} {"WinRM service IS RUNNING on $target"}
    {$test -eq $false} {"WinRM service is NOT running on $target"}
}




#----------------------------------------
# Notes:

Switch (<test-value>)
{
	<condition> {<action>}
	<condition> {<action>}
} 

 #-Credential $MyCred 