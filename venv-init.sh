#!./bash
if [[ $1 = python ]]; then
	python -m virtualenv env
elif [[ $1 = python3 ]]; then
	python3 -m venv env
else
	echo "Input error: ${1} is not valid, please use python or python3"
fi