function FindInstalledApplication
{
  param($appName, $appVersion)
    
  if ((Get-WmiObject win32_operatingsystem).OSArchitecture -notlike '64-bit')  
  { 
      $keys= (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*') 
  }  
    else  
  { 
      $keys = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*','HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*') 
  }   

  if ($appVersion -eq $null) { 
    @($keys | Where-Object {$_.DisplayName -like $appName -or $_.PSChildName -like $appName}).Length -gt 0
  }
  else{
    @($keys | Where-Object {$_.DisplayName -like $appName -or $_.PSChildName -like $appName  } | Where-Object {$_.DisplayVersion -eq $appVersion} ).Length -gt 0
  }

}

