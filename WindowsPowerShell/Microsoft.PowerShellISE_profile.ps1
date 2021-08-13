
$MyCred = Get-Credential -Credential an458060ad    # Run this line once to store credentials.


# ------------------------------------

Function Enter {

Param($RemoteMachine)

  Write-Host $RemoteMachine
  Enter-PSSession -computer $RemoteMachine -SessionOption (New-PSSessionOption -NoMachineProfile) 

} # end function Enter

Function StartRM {

Param($RemoteMachine)

  Write-Host $RemoteMachine
  c:\temp\pstools\psexec -h -s -e -d \\$RemoteMachine winrm.cmd quickconfig -q  

} # end function StartRM


Function Testing {

Param($VariableHere)

  Write-Output "I am in the function now. My variable is $VariableHere"

} # end function Testing


# Note, after changing this file .$profile should re-run the profile in the current scope. 
# .$profile

Function so {

Param($MyPath)
Write-Host $MyPath

sadmin recover -z CA23AF68D11B1D7
sadmin so $MyPath
sadmin lockdown
# exit

} # end function so.  This doesn't work on remote systems, yet. 