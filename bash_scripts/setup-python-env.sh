python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install geopandas
pip install op_verification
pip install jupyterlab
python -m ipykernel install --user --name venv --display-name "venv (precinct-matching)"
jupyter lab