# Sources:
# https://stackoverflow.com/questions/27277701/powershell-get-ipv4-address-into-a-variable

$ipV4 = Test-Connection -ComputerName (hostname) -Count 1  | Select -ExpandProperty IPV4Address
pyro5-ns -n $ipV4.IPAddressToString