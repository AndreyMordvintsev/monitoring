#Установка Grafana на CentOS:
#https://grafana.com/docs/grafana/latest/setup-grafana/installation/redhat-rhel-fedora/

Import the GPG key:
wget -q -O gpg.key https://rpm.grafana.com/gpg.key  #(не хочет качаться, зашел на сайт и скопировал в vim сам ключ)
sudo rpm --import gpg.key

#Create /etc/yum.repos.d/grafana.repo with the following content:
[grafana]
name=grafana
baseurl=https://rpm.grafana.com
repo_gpgcheck=1
enabled=1
gpgcheck=1
gpgkey=https://rpm.grafana.com/gpg.key
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt

#To install Grafana OSS, run the following command (установка без репо grafana!!!):
sudo yum install -y https://dl.grafana.com/oss/release/grafana-11.0.0-1.x86_64.rpm --disablerepo=grafana
#Создались папки /etc/grafana и /usr/share/grafana

