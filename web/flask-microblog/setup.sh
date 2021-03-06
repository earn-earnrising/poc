#!/bin/bash -e

# Update system
sudo apt-get install build-essential python3

# Prepare virtual environment
if [ ! -e flask ]; then
    python3 -m virtualenv flask
fi
flask/bin/pip install pip --upgrade
flask/bin/pip install setuptools --upgrade

flask/bin/pip install flask
flask/bin/pip install flask-login
flask/bin/pip install flask-openid
flask/bin/pip install flask-mail
flask/bin/pip install flask-sqlalchemy
flask/bin/pip install sqlalchemy-migrate
#flask/bin/pip install flask-whooshalchemy
flask/bin/pip install git+git://github.com/miguelgrinberg/flask-whooshalchemy.git
flask/bin/pip install flask-wtf
flask/bin/pip install git+git://github.com/mitsuhiko/babel.git --global-option import_cldr
flask/bin/pip install flask-babel
#flask/bin/pip install guess_language
flask/bin/pip install https://bitbucket.org/spirit/guess_language/downloads/guess_language-spirit-0.5a4.tar.bz2
flask/bin/pip install flipflop
flask/bin/pip install coverage
flask/bin/pip install mysql-connector-python --allow-external mysql-connector-python


# Prepare file system of virtual environment
mkdir -p {app/{static,templates},tmp}


exit 0
