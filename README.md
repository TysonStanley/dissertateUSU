
<!-- README.md is generated from README.Rmd. Please edit that file -->

# `dissertateUSU` `v0.1.0` <img src="inst/dissertateUSU_hex.png" align="right" width="30%" height="30%"/>

The goal of `dissertateUSU` is to make two aspects of writing a
dissertation at Utah State University better:

1.  Formatting of the dissertation is automatically done for you
2.  All analyses are intimately tied to the document making the work
    more reproducible

Ultimately, this allows the student to focus on the writing and the
results without having to worry excessively about updating tables and
figures, adjusting formatting of things like the title page and table of
contents, and other minor (but important) aspects of getting the
document correct.

## Installation

You can install `dissertateUSU` with:

``` r
remotes::install_github("tysonstanley/dissertateUSU")
```

## Example

To use the package, after installing it, open up a new RMarkdown file:

<img src="inst/dropdownmenu.png" align="center" width="20%"/>

and select the “Dissertate USU” template:

<img src="inst/fromtemplate.png" align="center" width="80%"/>

This will open up a new folder with a skeleton RMarkdown file:

<img src="inst/template.png" align="center" width="100%"/>

This produces a document that matches the USU dissertation guidelines:

<img src="inst/output.png" align="center" width="100%"/>

## Writing, Writing, Writing

In the folder, there are other RMarkdown files called `Chapter1.Rmd`,
`Chapter2.Rmd`, etc. These are the files where you will do the writing
and analyzing. The main RMarkdown file will bring all these files
together into one document. The only things you need to update in the
main RMarkdown file is the `yaml` information, the abstracts,
acknowledgments, and dedication.

## Note

The package is still undergoing some development and we would love
feedback on any aspect that doesn’t work as expected.

We also want to thank the
[`rticles`](https://github.com/rstudio/rticles) package for the
functionality for `dissertateUSU`. Many of the functions herein were
derived directly from `rticles`, just with a custom template and LaTeX
style.
