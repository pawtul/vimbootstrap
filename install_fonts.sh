#copy to /usr/local/share/fonts/ for system-wide installation
mkdir ~/.fonts

cp ./fonts/* ~/.fonts/

fc-cache -f -v

