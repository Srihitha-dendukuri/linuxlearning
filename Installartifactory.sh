#Download the installer
wget -O jfrog-rpm-installer.tar.gz "https://releases.jfrog.io/artifactory/jfrog-prox/org/artifactory/pro/rpm/jfrog-platform-trial-prox/[RELEASE]/jfrog-platform-trial-prox-[RELEASE]-rpm.tar.gz"
#extract it
tar -xvzf jfrog-rpm-installer.tar.gz
#change directory
cd jfrog-platform-trial-pro*
# Run the installation
sudo ./install.sh
#Start Artifactory
sudo systemctl start artifactory.service
#Start Scan
sudo systemctl start xray.service
#Test it on local browser
http://localhost:8082/
