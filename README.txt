To start using Flask Helper, open up your project directory, and type the following command

On Mac/Linux:
  alias flask-init = "<path-to-flask-helper>/flask-init.sh $1" && 
  alias pip-init = "<path-to-flask-helper>/pip-init.sh $1" && 
  alias venv-init = "<path-to-flask-helper>/venv-init.sh $1"
  
  also type
  
  sudo chmod -R 757 <path-to-flask-helper>

On Windows:
  doskey flask-init = "<path-to-flask-helper>/flask-init.sh $1" && 
  doskey pip-init = "<path-to-flask-helper>/pip-init.sh $1" && 
  doskey venv-init = "<path-to-flask-helper>/venv-init.sh $1"
  
Now that we have created the commands, type in the following command:
  flask-init <project name>
  
Then, cd into your new project directory and type this command:
  venv-init <python for python 2 and earlier, python3 for python 3 and later> && pip-init <pip or pip3>
  
You have now created a simple project using Flask Helper
