#Setup
#Settings->Keyboard->Input Sources->Add Russian Input
#Settings->Region and Language->Manage Installed Language->Regional Formats

#Update
sudo apt update -y
sudo apt upgrade -y
sudo apt full-upgrade -y
sudo apt autoremove -y
sudo snap refresh

#Sublime
sudo apt-get install apt-transport-https

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

#Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt install google-chrome-stable -y

#Ansible
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

#Apt
sudo apt install curl -y
sudo apt install httpie -y
sudo apt install qbittorrent -y
sudo apt install openjdk-21-jdk -y
sudo apt install openjdk-21-source -y
sudo apt install cuetools shntool flac -y
sudo apt install ffmpeg -y
sudo apt install rename -y
sudo apt install wine -y
sudo apt install plocate -y
sudo apt install rar unrar p7zip-full p7zip-rar -y
sudo apt install gmtp -y
sudo apt install mc -y
sudo apt install imagemagick -y

sudo apt install docker.io -y
sudo usermod -aG docker ${USER}
sudo apt install podman -y
sudo apt install tree -y
sudo apt install guvcview -y
sudo apt install cockpit -y
sudo apt install virtualbox -y

#Vitals
sudo apt install gnome-shell-extension-manager gir1.2-gtop-2.0 lm-sensors -y

#Ftp
sudo apt install vsftpd -y
sudo subl /etc/vsftpd.conf

sudo systemctl restart vsftpd

#MPD
sudo apt install mpd -y
sudo systemctl enable mpd
sudo subl /etc/mpd.conf

sudo systemctl restart mpd
sudo apt install mpc

# Media players
sudo apt install cantata -y
sudo apt install clementine -y
sudo snap install vlc
sudo snap install foobar2000
# download deadbeef deb from https://deadbeef.sourceforge.io/download.html
sudo dpkg -i deadbeef.deb

#Games
#sudo apt install steam -y

#Flatpak
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install com.calibre_ebook.calibre -y
flatpak install org.filezillaproject.Filezilla -y
flatpak install org.gimp.GIMP -y
flatpak install org.audacityteam.Audacity -y

#Sdkman
#curl -s "https://get.sdkman.io" | bash

#Midi
sudo apt install jackd2 -y
sudo apt install qsynth -y

#DB
sudo apt install postgresql -y

#Develop
sudo snap install intellij-idea-community --classic
sudo snap install code --classic
sudo snap install postman
sudo snap install dbeaver-ce
sudo snap install kate --classic
sudo snap install go --classic

#sudo snap install teams-for-linux
#sudo snap install telegram-desktop OR download from site

#Inkscape
#sudo add-apt-repository ppa:inkscape.dev/stable
#sudo apt update
#sudo apt install inkscape -y

#Blender
#sudo snap install blender --classic

wine Distr/Setup_MyHomeLib_2_3.exe

cp /var/lib/snapd/desktop/applications/ 
cp /var/lib/flatpak/exports/share/applications/ 
cp /usr/share/applications/ 
