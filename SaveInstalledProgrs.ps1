# Test powershell script to get a list of instlled programs and save it 
# in c:\instProgs.txt

Function Get-InstalledPrograms {
  $ProgramsLoc = Get-ChildItem HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall
  $Items = $ProgramsLoc |foreach-object {Get-ItemProperty $_.PsPath}
  foreach ($i in $items) { 
  	if($i.displayName.length -gt 0) { 
  		#write-host $i.displayName,$i.displayVersion,InstallDate | ft
  		$i | select-object displayName, displayVersion,InstallDate
  	} 
  }
}

# call function to get programs
$iprogs = Get-InstalledPrograms
$iprogs | out-file -path c:\instProgs.txt -force
