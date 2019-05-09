# a) in folder DevOps01, create a bash script called devops01a.sh that gets information about your computer including:
# number of volumes, size of each volume, free space on each volume
df -h
# Filesystem      Size   Used  Avail Capacity iused               ifree %iused  Mounted on
# /dev/disk1s1   234Gi  201Gi   29Gi    88% 1973180 9223372036852802627    0%   /
# devfs          188Ki  188Ki    0Bi   100%     652                   0  100%   /dev
# /dev/disk1s4   234Gi  3.0Gi   29Gi    10%       3 9223372036854775804    0%   /private/var/vm
# map -hosts       0Bi    0Bi    0Bi   100%       0                   0  100%   /net
# map auto_home    0Bi    0Bi    0Bi   100%       0                   0  100%   /home
#
# number cpus/cores, information about the cpus/core
sysctl -n machdep.cpu.core_count
# 2
sysctl -n machdep.cpu.brand_string
# Intel(R) Core(TM) i5-4308U CPU @ 2.80GHz
# amount of ram, your mac address and ip address
hostinfo
# Mach kernel version:
# 	 Darwin Kernel Version 18.5.0: Mon Mar 11 20:40:32 PDT 2019; root:xnu-4903.251.3~3/RELEASE_X86_64
# Kernel configured for up to 4 processors.
# 2 processors are physically available.
# 4 processors are logically available.
# Processor type: x86_64h (Intel x86-64h Haswell)
# Processors active: 0 1 2 3
# Primary memory available: 16.00 gigabytes
# Default processor set: 473 tasks, 1720 threads, 4 processors
# Load average: 1.35, Mach factor: 2.63
ifconfig en0 | awk '/ether/{print $2}'
# 80:e6:50:26:8a:a4
ifconfig en0 | awk '/inet/{print $2}'
# fe80::cf4:d3be:b7da:33f7%en0
# 172.31.99.67
