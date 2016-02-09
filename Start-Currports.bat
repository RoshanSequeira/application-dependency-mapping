:: Nightly scheduled task that stops the current CurrPorts process, deletes the old log file, and starts the process again
:: kills the current running CurrPorts program
taskkill /f /im cports.exe

:: delete yesterdays cports log
 +del "C:\Support\Programs\CurrPorts\3DaysAgo-cports.log"
  
:: renames cports log files
 +ren "C:\Support\Programs\CurrPorts\2DaysAgo-cports.log" 3DaysAgo-cports.log
 +ren "C:\Support\Programs\CurrPorts\1DayAgo-cports.log" 2DaysAgo-cports.log
 +ren "C:\Support\Programs\CurrPorts\cports.log" 1DayAgo-cports.log

:: starts CurrPorts with a customized config file
start "" C:\Support\Programs\CurrPorts\cports.exe /cfg C:\Support\Programs\CurrPorts\customised.cfg /StartAsHidden 1
