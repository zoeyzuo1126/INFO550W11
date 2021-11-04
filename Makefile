report: Rmd/report.Rmd figs/graphs.png
	Rscript -e "rmarkdown::render('Rmd/report.Rmd')"

figs/graphs.png: R/graphs.R
	Rscript R/graphs.R

.PHONY: report