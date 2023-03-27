apt-get update
apt-get install -y openssh-server

# Modify `sshd_config`
sed -ri 's/#Port 22/Port 2200/' /etc/ssh/sshd_config
sed -ri 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

/etc/init.d/ssh start

# change password root to p4sword
usermod --password $(echo p4sword | openssl passwd -1 -stdin) root
