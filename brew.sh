#!/usr/bin/env bash

# Install command-line tools using Homebrew.
# Taps
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap caskroom/versions
brew tap homebrew/boneyard
brew tap homebrew/core
brew tap homebrew/science
brew tap homebrew/services
brew tap homebrew/versions
brew tap osgeo/osgeo4mac

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install `wget` with IRI support.
brew install wget --with-iri

brew cask install chromium
brew cask install clamxav
brew cask install dropbox
brew cask install endlesssky
brew cask install flux
brew cask install font-fira-code
brew cask install gdal-framework
brew cask install github-desktop
brew cask install gephi
brew cask install google-earth-pro
brew cask install kodi
brew cask install macvim
brew cask install meshlab
brew cask install mou
brew cask install pdfinfo
brew cask install pdftotext
brew cask install qgis
brew cask install rstudio
brew cask install selfcontrol
brew cask install sitesucker
brew cask install skype
brew cask install slack
brew cask install spotify
brew cask install stellarium
brew cask install sublime-text
brew cask install taskwarrior-pomodoro
brew cask install the-unarchiver
brew cask install wireshark
brew cask install xquartz

brew install aircrack-ng
brew install autogen
brew install autopano-sift-c
brew install bcwipe
brew install cctools
brew install homebrew/science/cfitsio
brew install clamav
brew install dark-mode
brew install dirmngr
brew install epsilon
brew install ettercap
brew install exiftool
brew install fail2ban
brew install ffmpeg --with-libvidstab --with-openh264 --with-tools
brew install fltk
brew install gcc
brew install osgeo/osgeo4mac/gdal2
brew install ghostscript
brew install git
brew install git-lfs
brew install gmime
brew install gpsbabel
brew install htop-osx
brew install hugo
brew install iftop
brew install homebrew/science/igraph
brew install imagemagick
brew install homebrew/science/insighttoolkit
brew install jasper
brew install jpegoptim
brew install libdap
brew install libusb-compat
brew install libvo-aacenc
brew install lynx
brew install mapnik
brew install mas
brew install homebrew/science/matplotlib
brew install midnight-commander
brew install mongodb
brew install mtr
brew install nmap
#brew install node --without-npm
brew install notmuch
brew install openvpn
brew install pandoc
brew install pdal
brew install pgrouting
brew install pngquant
brew install podofo
brew install poppler
brew install protobuf
brew install homebrew/science/r --with-x11
brew install ranger
brew install rbenv
brew install rename
brew install rsync
brew install speedtest_cli
brew install tasksh
brew install tcpdump
brew install tcpflow
brew install tcptrace
brew install theharvester
brew install tokyo-cabinet
brew install trash
brew install tree
brew install unixodbc
brew install webkit2png
brew install wxpython
brew install xerces-c
brew install youtube-dl

# Remove outdated versions from the cellar.
brew cleanup -s
