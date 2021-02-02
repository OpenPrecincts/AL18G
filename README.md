# precinct-matching-framework

Parallelize precinct matching by sharding data into counties.

## Setting up the precinct matching framework

1. Run all the bash scripts in `bash_scripts/`
    * `bash bash_scripts/setup-data-dirs.sh`
    * `bash bash_scripts/setup-python-env.sh`

2. Pivot and validate precinct level election results in `pivot_results.ipynb`

3. Aquire and validate precinct level election shapefile.

4. Load and inspect the precinct election resutls and precinct eleciton shapefile in `setup.ipynb`. Ensure that there textual data for matching or this framework will not be very effective. That is, the files should have varied forms of the same name (e.g. LEHIGH TWP DIST PENNSVILLE matches LEHIGH District PENN) for most precincts.

5. Next, the work can be divided among team members by assigning counties. Matching for each could should be done in the `matching/{$county-id}` folder. It would be helpful to have a spreadsheet of some kind to identify bottle necks and generally track progress.

6. Once all counties have been matched, run `merge.ipynb` to combine the exported county shapefiles into a statewide precinct level election shapefile.

## Matching individual counties

1. Run `bash bash_scripts/setup-python-env.sh` to initialize your virtual environment and launch [JupyterLab](https://jupyterlab.readthedocs.io/en/stable/)

2. Navigate to `matching/{$county-id}/{$county-id} Precinct Matching.ipynb` where `{$county-id}` is the county that you want to work on.

3. Click `{$county-id} Precinct Matching.ipynb` to launch the notebook.

4. Select `venv (precinct-matching)` as your kernel (top right in the UI). This will ensure you are using an environment with all the requisite dependencies.

5. Use `Shift+Enter` to run the cells until you reach the last cell. Review to output of that cell to see the current state of your matches. Adjust that code as necessary to make more matches.
