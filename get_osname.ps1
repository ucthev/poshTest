#!powershell
# WANT_JSON
# POWERSHELL_COMMON

# define result variable in JSON format
$result = New-Object psobject @{
name = 'undefined'
changed = $false
};

# get operating system name
$osname = (Get-WmiObject -Class win32_operatingSystem).Caption
$result.name = $osname

# return result back
#Exit-Json $result;
return $result
