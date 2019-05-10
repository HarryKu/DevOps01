#!/bin/bash
# memory
# top -l 1 | grep PhysMem -> mac
free
# disk
df -h
# CPU
# top -l 1 | grep "CPU usage" -> mac
apt-get install sysstat
mpstat
