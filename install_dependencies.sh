sudo apt-get update
sudo apt-get -y install libncurses5-dev libncursesw5-dev ack-grep gcc python3-dev python-dev exuberant-ctags

sudo python3 get-pip.py
sudo python2 get-pip.py

sudo python3 -m pip install mypy flake8 pylint isort typing
sudo python2 -m pip install flake8 pylint isort typing

