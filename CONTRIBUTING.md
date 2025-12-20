# Contributing to ReliaLearnR

This guide outlines how to propose a change to ReliaLearnR.

## Fixing typos

You can fix typos, spelling mistakes, or grammatical errors in the
documentation directly using the GitHub web interface, as long as the
changes are made in the *source* file. This generally means you’ll need
to edit [rmarkdown](https://rmarkdown.rstudio.com) in an `.Rmd`, not an
`.html` file. You can find the `.Rmd` files for the tutorials in the
‘/inst/tutorials/’ sub directories. For example, the sub directory for
the life data analysis tutorial is located at ‘/inst/tutorials/lda/’.

## Bigger changes

If you want to make a bigger change, it’s a good idea to first file an
issue and make sure someone from the team agrees that it’s needed. If
you’ve found a bug, please file an issue that illustrates the bug with a
minimal example.

## New tutorials

This project is being actively developed, and recommendations for new
tutorials are always welcome. While the aim is to cover a broad range of
reliability topics, the focus is primarily on data-based reliability
analysis methods. Some ideas for possible future tutorials include:

- Repairable Systems Analysis
- Parametric Survival Analysis
- Reliability Block Diagrams

To propose a new tutorial, or if you would like to contribute your own
tutorial, please open an issue to discuss further.

### Pull request process

- Fork the package and clone onto your computer. If you haven’t done
  this before, we recommend using
  `usethis::create_from_github("paulgovan/ReliaLearnR", fork = TRUE)`.

- Install all development dependencies with
  `devtools::install_dev_deps()`, and then make sure the package passes
  R CMD check by running `devtools::check()`. If R CMD check doesn’t
  pass cleanly, it’s a good idea to ask for help before continuing.

- Create a Git branch for your pull request (PR). We recommend using
  `usethis::pr_init("brief-description-of-change")`.

- Make your changes, commit to git, and then create a PR by running
  `usethis::pr_push()`, and following the prompts in your browser. The
  title of your PR should briefly describe the change. The body of your
  PR should contain `Fixes #issue-number`.

- For user-facing changes, add a bullet to the top of `NEWS.md`
  (i.e. just below the first header).

## Code of Conduct

Please note that the ReliaLearnR project is released with a [Contributor
Code of
Conduct](https://paulgovan.github.io/ReliaLearnR/CODE_OF_CONDUCT.md). By
contributing to this project you agree to abide by its terms.
