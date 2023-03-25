
/bin/sudo systemctl enable firewalld
/bin/sudo systemctl start firewalld
/bin/sudo firewall-cmd --add-service=smb
/bin/sudo firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address='192.168.6.0/24' reject"


/bin/sudo firewall-cmd --reload






awk -F':' ‘length($1) >= 32 { print $1 }’ /etc/passwd >> badusers.txt

file="badusers.txt"
while read -r line; do
username=$(echo $line)
userdel $username
done <$file


