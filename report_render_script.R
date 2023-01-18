## GNXS report render script

library(optparse)
option_list = list(
  make_option(c("-d", "--dir"), type="character", default=NULL,
              help="directory containing Genexus sequencing group", metavar="character"))
opt_parser = OptionParser(option_list=option_list);
opt = parse_args(opt_parser)
rmarkdown::render('/home/ionadmin/github_app/GNXS_reports/report.Rmd',
                  params = list(diroi = opt$dir)
