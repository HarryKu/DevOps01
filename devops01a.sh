# a) in folder DevOps01, create a bash script called devops01a.sh that gets information about your computer including:
# number of volumes, size of each volume, free space on each volume
df -h
# number cpus/cores, information about the cpus/core
sysctl -n machdep.cpu.core_count
sysctl -n machdep.cpu.brand_string
# amount of ram, your mac address and ip address
hostinfo
ifconfig en0 | awk '/ether/{print $2}'
ifconfig en0 | awk '/inet/{print $2}'
