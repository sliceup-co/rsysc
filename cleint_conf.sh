#!/bin/bash
clear
echo "Enter the IP address of the remote rsyslog server"
read rm_ip

cat rsysc/rsyslog.conf | sed "s/REMOTE_IP/$rm_ip/" | sudo tee /etc/rsyslog.conf

sudo systemctl enable rsyslog
sudo systemctl start rsyslog
echo "verifying rsyslog is enabled"
sleep 2
sudo systemctl restart rsyslog

# Begin sending files
clear
echo "Loading Log Files"
sleep 2

clear
echo "Sending Andriod_2k" ; sleep 2

cat rsysc/logs/Andriod_2k.log | tee /tmp/test.log
sleep 3

clear
echo "Sending BGL_2k" ; sleep 2

cat rsysc/logs/BGL_2k.log| tee /tmp/test.log
sleep 3

clear
echo "Sending HPC_2k" ; sleep 2

cat rsysc/logs/HPC_2k.log | tee /tmp/test.log
sleep 3

clear
echo "Sending HealthApp_2k" ; sleep 2

cat rsysc/logs/HealthApp_2k.log | tee /tmp/test.log
sleep 3

clear
echo "Sending Mac_2k" ; sleep 2

cat rsysc/logs/Mac_2k.log | tee /tmp/test.log
sleep 3

clear
echo "Sending OpenStack_2k" ; sleep 2


cat rsysc/logs/OpenStack_2k.log | tee /tmp/test.log
sleep 3

clear
echo "Sending Spark_2k" ; sleep 2

cat rsysc/logs/Spark_2k.log  | tee /tmp/test.log
sleep 3

clear
echo "Sending Windows_2k" ; sleep 2


cat rsysc/logs/Windows_2k.log | tee /tmp/test.log
sleep 3

clear
echo "Sending Apache_2k" ; sleep 2

cat rsysc/logs/Apache_2k.log | tee /tmp/test.log
sleep 3

clear
echo "Sending HDFS_2k" ; sleep 2

cat rsysc/logs/HDFS_2k.log | tee /tmp/test.log
sleep 3

clear
echo "Sending Hadoop_2k" ; sleep 2

cat rsysc/logs/Hadoop_2k.log | tee /tmp/test.log
sleep 3

clear
echo "Sending Linux_2k" ; sleep 2

cat rsysc/logs/Linux_2k.log | tee /tmp/test.log
sleep 3

clear
echo "Sending OpenSSH_2k" ; sleep 2

cat rsysc/logs/OpenSSH_2k.log | tee /tmp/test.log
sleep 3

clear
echo "Sending Proxifier_2k" ; sleep 2

cat rsysc/logs/Proxifier_2k.log | tee /tmp/test.log
sleep 3

clear
echo "Sending Thunderbird_2k" ; sleep 2

cat rsysc/logs/Thunderbird_2k.log | tee /tmp/test.log
sleep 3

clear
echo "Sending Zookeeper_2k" ; sleep 2

cat rsysc/logs/Zookeeper_2k.log | tee /tmp/test.log
clear
