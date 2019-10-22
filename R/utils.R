

.check_template <-function(template, file){
  if (template == "")
    stop("Couldn't find template file for dissertateUSU", call. = FALSE)
}

.check_pdf <- function(pdf){
  # Stop if null
  if (is.null(pdf))
    stop("Something went wrong, likely in the yaml. Does it have all the necessary components? ", call. = FALSE)

  # Stop if not pandoc to latex
  if (pdf$pandoc$to == "latex")
    stop("Something went wrong, likely in the yaml. Did you change something in the output part of the yaml? ", call. = FALSE)
}

