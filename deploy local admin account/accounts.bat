::WARNING - credentials sent in plaintext

net user "adminacct" Password1234$ /ADD /Y
net localgroup Administrators "adminacct" /ADD /Y

net user "adminbackup" Password5678$ /ADD /Y
net localgroup Administrators "adminbackup" /ADD /Y
