
#install.packages("renv") # if not already installed, install renv from CRAN
renv::activate()
renv::restore() # this should prompt you to install the various packages required for the study

CohortDiagnostics::preMergeDiagnosticsFiles(dataFolder = here::here("Results"))


