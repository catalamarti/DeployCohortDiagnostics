# DeployCohortDiagnostics

This repository can be used to:
- Run a cohort diagnostics
- Run the cohort diagnostics shiny app
- Deploy the cohort diagnostics shiny app

## Istructions

### Run Cohort diagnostics:
1) Add cohort defintions to ~/DeployCohortDiagnostics/Diagnostics/1_InstantiateCohorts/Cohorts, each cohort definition must be in a diferent json file.
2) Open the project inside: ~/DeployCohortDiagnostics/Diagnostics/
3) Set the connection details to your database and specify the required parameters in CodeToRun.R.
4) Run the analysis executing line by line the code of CodeToRun.R, pay attention to the teo first lines (restore of renv environment that may requiere your interaction).
5) The result of the cohort diagnostics will be a bunch of .csv files in Results folder, a zip file and a file named PreMerged.RData that contains all of them.

*Note: if you already have the zip file and the only think that you need is to obtain the PreMerged.RData file: open the project and run the script CodeToRunIfZipFile.R

### Run the shiny app
1) Move the Premerged.RData file to: ~/DeployCohortDiagnostics/Diagnostics/data
2) open the projec in: ~/DeployCohortDiagnostics/DiagnosticsApp/
3) run in the console:
```
renv::activate()
renv::restore()
shiny::runApp()
```

