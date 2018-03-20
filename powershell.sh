`
Enable-PSRemoting

set-item wsman:\localhost\Client\TrustedHost -value *

Enter-PSSession -ComputerName 00.000.000.00 -Credential XXXX\xxxxx
`
