#' JASA Journal format.
#'
#' Format for creating submissions to JASA Journals. Based on the official JASA journal class.
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Additional arguments to \code{rmarkdown::pdf_document}
#'
#' @return R Markdown output format to pass to
#'   \code{\link[rmarkdown:render]{render}}
#'
#' @details Possible arguments for the YAML header are:
#' \itemize{
#'   \item \code{title} title of the dissertation
#'   \item \code{author} list of authors, containing \code{name} and \code{num}
#'   \item \code{year} year of defense
#'   \item \code{degree} degree earned (e.g. "Doctor of Philosphy")
#'   \item \code{field} the field the degree is awarded in
#'   \item \code{department} the department awarding the degree
#'   \item \code{uni} the full name of the university awarding the degree
#'   \item \code{location} the location of the university
#'   \item \code{chair} name of the defense committee chairperson
#'   \item \code{committee2} name of second committee member
#'   \item \code{committee3} name of third committee member
#'   \item \code{committee4} name of fourth committee member
#'   \item \code{committee5} name of fifth committee member (if left blank, committee4 will be ignored and the cover page will be formatted as a masters thesis)
#'   \item \code{gradschool} name of the graduate school member who needs to sign off on the degree
#'   \item \code{gradschoollabel} the position of the graduate school member
#'   \item \code{bibliography} BibTeX \code{.bib} file name
#'   \item \code{csl} the .csl citation style file name
#'   \item \code{header-includes}: custom additions to the header, before the \code{\\begin\{document\}} statement
#'   \item \code{include-after}: for including additional LaTeX code before the \code{\\end\{document\}} statement
#'   }
#'
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("MyArticle.Rmd", template = "dissertateUSU", package = "dissertateUSU")
#' }
#'
#' @import rticles
#' @import yaml
#'
#' @export
dissertateUSU <- function(..., highlight = NULL, citation_package = "none") {

  # Find template and check it
  template_file <-
    system.file("rmarkdown", "templates", "dissertateUSU",
                file.path("resources", "template.tex"),
                package = "dissertateUSU")
  .check_template(template_file)

  # Render the pdf_document with parameters
  pdf <-
    rmarkdown::pdf_document(
    ...,
    template = template_file,
    highlight = highlight,
    citation_package = citation_package
    )

  pdf$inherits <- "pdf_document"
  pdf
}

