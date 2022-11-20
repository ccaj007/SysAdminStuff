# You want to know the user account that launched a given process.
$process = "notepad"

$id = Get-Process -Name $process | Foreach-Object Id
Get-CimInstance Win32_Process -Filter "ProcessId = '$id'" |Invoke-CimMethod -Name GetOwner