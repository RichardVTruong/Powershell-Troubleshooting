# Specify the IPv4 address of the printer
$printerIPv4Address = ""

# Create a new TCP/IP printer port
$portName = "IP_$printerIPv4Address"
$portHostAddress = [System.Net.IPAddress]::Parse($printerIPv4Address)
Add-PrinterPort -Name $portName -PrinterHostAddress $portHostAddress

# Install the printer using the TCP/IP port
$printerName = ""
$driverName = ""
$infPath = ""
Add-Printer -Name $printerName -DriverName $driverName -PortName $portName -InfPath $infPath

# Display success message
Write-Host "Printer connected successfully."
