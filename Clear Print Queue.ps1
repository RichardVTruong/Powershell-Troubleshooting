# Stops the print spooler service
net stop spooler 

# Deletes the queued files
del %windir%\system32\spool\printers\*.shd 
del %windir%\system32\spool\printers\*.spl 

# Starts the print spooler service again
net start spooler