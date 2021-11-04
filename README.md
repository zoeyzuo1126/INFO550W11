## My project
 This Project will work with RStudio, mtcar from base R is chosen for this project.

 To better analyze the data you will need to install some R packages. The required packages can be installed using R commands.

```{r}
installed_pkgs <- row.names(installed.packages())
pkgs <- c("car", "dplyr")
for(p in pkgs){
	if(!(p %in% install_pkgs)){
		install.packages(p)
	}
}
```
## OR
Or you could use renv package to help set up library

## Execute the analysis

To execute the analysis, from the project folder you can run
```{r}
Rscript -e "rmarkdown::render('report.Rmd')"
```

This will create a file called report.html output in your directory that contains the results.
