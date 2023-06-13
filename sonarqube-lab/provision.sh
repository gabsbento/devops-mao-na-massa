#/usr/bin/bash
#useradd sonar
#yum install wget unzip -y
#wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.0.0.68432.zip
#wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.rpm
#yum -y install ./jdk-17_linux-x64_bin.rpm
#unzip sonarqube-10.0.0.68432.zip -d /opt/
#mv /opt/sonarqube-10.0.0.68432 /opt/sonarqube
#chown -R sonar:sonar /opt/sonarqube
#touch /etc/systemd/system/sonar.service
#echo > /etc/systemd/system/sonar.service
#cat <<EOT >> /etc/systemd/system/sonar.service 
#[Unit]
#Description=Sonarqube service
#After=syslog.target network.target
#[Service]
#Type=forking
#ExecStart=/opt/sonarqube/bin/linux-x86-64/sonar.sh start
#ExecStop=/opt/sonarqube/bin/linux-x86-64/sonar.sh stop
#User=sonar
#Group=sonar
#Restart=always
#[Install]
#WantedBy=multi-user.target
#EOT
#service sonar start

# instalar sonar scanner
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.8.0.2856-linux.zip
unzip sonar-scanner-cli-4.8.0.2856-linux.zip -d /opt/
mv /opt/sonar-scanner-4.8.0.2856-linux /opt/sonar-scanner
chown -R sonar:sonar /opt/sonar-scanner
echo 'export PATH=$PATH:/opt/sonar-scanner/bin' | sudo tee -a /etc/profile
curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
sudo yum install nodejs -y 