
#if [ `dpkg -l puppet` != 0 ]; themn
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
sudo dpkg -i puppetlabs-release-trusty.deb
sudo apt-get update && sudo apt-get install -y puppet
