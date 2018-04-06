apt update -y && sudo apt full-upgrade -y
apt remove audience scratch-text-editor appcenter -y
apt install terminator vim gedit gedit-plugins gdebi transmission software-properties-gtk vlc autoconf -y

git config --global user.name "Dusan Kovacevic"
git config --global user.email "dusankovacevic95@gmail.com"
git config --global core.editor vim
git config --global push.default simple
git config --global advice.statusHints off


wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
gdebi google-chrome*.deb --n

wget -O code.deb https://go.microsoft.com/fwlink/?LinkID=760868
gdebi code.deb --n

wget -O skype.deb https://go.skype.com/skypeforlinux-64.deb
gdebi skype.deb

rm *.deb

sudo add-apt-repository ppa:philip.scott/elementary-tweaks -y
sudo apt update -y
sudo apt install elementary-tweaks -y

sudo add-apt-repository ppa:fossfreedom/arc-gtk-theme-daily -y
sudo apt update -y
sudo apt install arc-theme -y

sudo add-apt-repository ppa:moka/daily -y
sudo apt-get update -y
sudo apt-get install moka-icon-theme faba-icon-theme faba-mono-icons -y

git clone https://github.com/horst3180/arc-icon-theme --depth 1 && cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install

sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
sudo apt-get update -y
sudo apt install grub-customizer -y

sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt-get update
sudo apt install virtualenv python3.6 -y

# bash aliases here
alias activate="source .venv/bin/activate"
alias glog="git log --oneline --graph --decorate"
alias gloga="git log --oneline --graph --all --decorate"

gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Alt>w']"
gsettings set org.gnome.desktop.wm.keybindings minimize "['<Alt>s']"
gsettings set org.gnome.desktop.wm.keybindings close "['<Alt>x']"
gsettings set org.gnome.mutter.keybindings toggle-tiled-left "['<Alt>a']"
gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Alt>d']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-left "['<Alt><Shift>a']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-right "['<Alt><Shift>d']"

gsettings set org.gnome.mutter workspaces-only-on-primary false

