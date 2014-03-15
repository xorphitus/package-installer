sudo tee -a /etc/pacman.conf <<EOF

[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/$arch
EOF

sudo pacman --sync --refresh yaourt

# pacman

# basic tools
sudo pacman emacs zsh tmux openssl git vim pacman alsa-utils
# CUI tools
sudo pacman tree tig the_silver_searcher lsof source-highlight unzip htop dstat iotop
# GUI tools
sudo pacman xorg-xmodmap terminator xpdf-japanese gpicview libreoffice libreoffice-ja gimp vlc hardinfo skype flashplugin firefox-i18n-ja dunst nitrogen

# yaourt

# CUI tools
sudo yaourt -Ss jq dropbox-cli emacs-ddskk

# GUI tools
sudo yaourt -Ss xmonad xmonad-contrib xmobar ttf-ricty compton nitrogen googe-chrome-beta

# Lang
sudo pacman -Ss clojure scala gauche clisp
sudo yaourt -Ss leiningen

