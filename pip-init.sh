#!./bash
if [[ $1 = pip ]]; then
	pip install flask
    pip install mysql-connector-python
    pip install Flask-SQLAlchemy
    pip install flaskwebgui
elif [[ $1 = pip3 ]]; then
	pip3 install flask
    pip3 install mysql-connector-python
    pip3 install Flask-SQLAlchemy
    pip3 install flaskwebgui
else
	echo "Input error: ${1} is not valid, please use pip or pip3"
fi

pip freeze >> requirments.txt