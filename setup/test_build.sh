if [ $1 ]
then 
   MESSAGE=$1
else
   MESSAGE="[>>TestBuild<<]"
fi

echo "$MESSAGE source .venv/bin/activate"
source .venv/bin/activate

echo "$MESSAGE Using python:"
which python
python --version

echo "$MESSAGE pip install -r requirements/development.txt"
python -m pip install -r requirements/development.txt

echo "$MESSAGE pip install -r requirements/base.txt"
python -m pip install -r requirements/base.txt

echo "$MESSAGE pip install ."
python -m pip install -e .
