---
title: 'WeibullR.learnr: An Interactive Introduction to Reliability Engineering'
tags:
  - R
  - life data analysis
  - Weibull analysis
  - reliability engineering
authors:
  - name: Paul B. Govan
    orcid: 0000-0002-1821-8492
    affiliation: 1
affiliations:
 - name: Senior Reliability Systems Engineer, Safety and Reliability, GE Aerospace
   index: 1
date: 31 August 2025
bibliography: paper.bib

---

# Statement of Need

Life data analysis is the study of how systems, from machines to people, perform 
over time. Life data includes lifespans, failure rates, and repair or replacement
timelines. While various learning resources exist, many rely on proprietary software
that can be inaccessible to students and early-career professionals due to cost constraints.

`WeibullR.learnr` [@WeibullRlearnr] is an open-source collection of interactive 
learning modules, exercises, and functions designed for introductory life data analysis. 
The primary goal of this project is to introduce fundamental concepts while providing 
an open-source alternative for analyzing life data. The target audience includes 
beginner practitioners and university students.

# Description

`WeibullR.learnr` is written in R [@R] and utilizes `WeibullR` [@WeibullR], an R 
package for Life Data Analysis based on the methodologies of Waloddi Weibull [@Weibull],
and `learnr` [@learnr], a framework for building interactive learning modules in R.

Currently, three primary learning modules are available. These modules are independent
and can be completed in any order. They are designed to be plug-and-play, but users 
can modify them by forking the repository.

`lda()` provides an interactive introduction to Life Data Analysis. 
The learning objectives include basic Weibull analysis, censoring techniques such 
as right and interval censored data, different types of Weibull models including 
the 2P Weibull, 3P Weibull, and Weibayes model, parameter estimation methods Median
Rank Regression (MRR) and Maximum Likelihood Estimation (MLE), and data visualization
methods such as Probability Plots and Contour Plots. The estimated duration for 
this module is approximately 2 hours. 

`ram()` is a quick reference for common Reliability, Availability, and Maintainability
(RAM) concepts. The learning objectives include the basic concepts and application 
of Reliability, Availability, Mean Time to Repair (MTTR), Mean Time to Failure (MTTF), 
Mean Time Between Failures (MTBF), Failure Rate, Probability of Failure, and $B_n$ 
or $L_n$ life. The estimated duration of this module is about 1 hour.

`rt()` provides an interactive introduction to Reliability Testing. The 
learning objectives include defining key reliability growth concepts, including 
Crow-AMSAA and Duane models, fitting a reliability growth model to real-world data
using R, interpreting reliability growth plots and identifying trends, applying 
the Crow-AMSAA model to assess reliability growth, explaining fundamental concepts
of accelerated life testing, including the use of Arrhenius and Power Law Models, 
conducting an accelerated life test with real-world datasets, utilizing R for analysis,
analyzing plots that illustrate the relationships in accelerated life testing, identifying
key patterns and data trends, and utilizing Arrhenius and Power Law models to evaluate 
the impact of stress factors on product reliability. The estimated duration of this 
module is about 2 hours.

The modules can also be accessed in a browser at 
[https://paulgovan.shinyapps.io/RAMAnalysis/](https://paulgovan.shinyapps.io/RAMAnalysis/), 
[https://paulgovan.shinyapps.io/LifeDataAnalysis/](https://paulgovan.shinyapps.io/LifeDataAnalysis/), 
and [https://paulgovan.shinyapps.io/ReliabilityTesting/](https://paulgovan.shinyapps.io/ReliabilityTesting/).

![](https://github.com/paulgovan/WeibullR.learnr/blob/master/inst/paper/WeibullRlearnr.png?raw=true)<!-- -->

Several helper functions for common RAM calculations are also included. These functions
make it easy to apply the concepts covered in this module.

* `rel()` - reliability function
* `avail()` - availability function
* `mttf()` - mean time to failure
* `mtbf()` - mean time between failure
* `fr()` - failure rate

The project documentation includes installation instructions for `WeibullR.learnr`
and the required dependencies, examples of running the programs, and references 
to previous work used to build the modules. The documentation also references more
resources for learners looking for expanded applications. These resources include 
`WeibullR.plotly` [@WeibullRplotly], a R package for interactive Weibull probability
plots, and `WeibullR.shiny` [@WeibullRshiny], a shiny [@shiny] web application for 
Life Data Analysis.

This project is based on a reliability program at a major technology company. The 
original program helped many early-career professionals learn the fundamentals
of reliability engineering. However, this program was proprietary, limiting accessibility 
and leading to outdated learning materials as software evolved. By providing an open-source 
alternative, this project aims to reach a broader audience and foster a community 
of collaboration. 

Users are encouraged to explore the modules and contribute to the project. Contributions
can be made via Issues and Pull Requests in the repository, which includes a Contributor
Code of Conduct.

# Acknowledgements

The author acknowledges the creators of the original Reliability Program that inspired
this initiative.

# References
