#!./bash
rm -rf $1

mkdir $1 $1/static $1/templates
touch $1/app.py $1/templates/index.html $1/static/style.css $1/static/app.js

APP="
from flask import Flask, render_template
\n
\napp = Flask(__name__, template_folder='templates', static_url_path='/static')
\napp.secret_key = '<random string>'
\n
\n@app.route('/', methods=['POST', 'GET'])
\ndef index():
\n	return render_template('index.html')
\n
\nif(__name__ == '__main__'):
\n	app.run() 
"

HTML="
<html>
\n	<head>
\n		<link rel='stylesheet' href='/static/style.css'>
\n		<title>Main Page</title>
\n	</head>
\n	<body>
\n		<div id='center'>
\n			<center><h1>Welcome to your homepage</h1></center>
\n		</div>
\n	</body>
\n</html>
"

CSS="
\n#center {
\n	position: absolute;
\n	left: 50%;
\n	top: 50%;
\n	transform: translate(-50%, -50%);
\n  font-family: arial;
\n}
"

JS="
alert('JavaScript is being used!!')
"

echo -e ${APP} >> $1/app.py
echo -e ${HTML} >> $1/templates/index.html
echo -e ${CSS} >> $1/static/style.css
echo -e ${JS} >> $1/static/app.js
