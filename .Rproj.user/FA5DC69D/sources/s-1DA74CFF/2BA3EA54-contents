#' Preamble for Title Page
#'
#' Creates the preamble.tex file for the title page to work
#'
#'
#' @import rmarkdown
#' @import knitr
#' @export
preamble_for_title = function(file = "preamble.tex"){
  cat("\\newcommand{\\yeardegree}{", params$year, "}",
      "\\newcommand{\\degree}{", params$degree, "}\n",
      "\\newcommand{\\field}{", params$field, "}\n",
      "\\newcommand{\\chairperson}{", params$chair, "}\n",
      "\\newcommand{\\committeeone}{", params$committee1, "}\n",
      "\\newcommand{\\committeetwo}{", params$committee2, "}\n",
      "\\newcommand{\\committeethree}{", params$committee3, "}\n",
      "\\newcommand{\\committeefour}{", params$committee4, "}\n",
      "\\newcommand{\\gradschoolguy}{", params$gradschool, "}\n",
      "% Tables
      \\usepackage{booktabs}
      \\usepackage{threeparttable}
      \\usepackage{array}
      \\newcolumntype{x}[1]{%
      >{\\centering\\arraybackslash}m{#1}}%
      \\usepackage{placeins}
      \\usepackage{chngcntr}
      \\counterwithin{figure}{chapter}
      \\counterwithin{table}{chapter}
      \\usepackage[makeroom]{cancel}\n",
      file = file)
}
