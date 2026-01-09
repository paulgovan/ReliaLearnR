---
title: 'ReliaLearnR: Learning Modules for Reliability Analysis'
tags:
  - R
  - life data analysis
  - Weibull analysis
  - reliability engineering
  - availability
  - maintainability
  - reliability testing
  - accelerated life testing
authors:
  - name: Paul B. Govan
    orcid: 0000-0002-1821-8492
    affiliation: 1
affiliations:
 - name: Senior Reliability Engineer, Safety and Reliability, GE Aerospace
   index: 1
date: 7 January 2026
bibliography: paper.bib

---

# Statement of Need

Reliability analysis is an important aspect of engineering that focuses on ensuring
systems perform as expected over time. Key components of reliability analysis include
life data analysis, reliability, availability, and maintainability (RAM) analysis,
and reliability testing. These concepts are essential for engineers and professionals
involved in product design, manufacturing, and maintenance. However, many learning resources
for these topics rely on proprietary software, which can be expensive and inaccessible
to students and early-career professionals. 

`ReliaLearnR` [@ReliaLearnR] addresses this gap by providing an open-source
framework for learning reliability analysis using R [@R], a widely-used programming
language for statistical computing and data analysis. The primary objective of this
project is to introduce fundamental concepts of reliability analysis while providing
an open-source alternative for analyzing reliability data. The target audience for
this project includes engineering students and professionals who are interested
in learning the fundamentals of reliability analysis.

# Design

`ReliaLearnR` is written in R [@R] and utilizes `WeibullR` [@WeibullR] for Life Data 
Analysis [@Weibull], `WeibullR.alt` [@WeibullRalt] for Accelerated Life Testing [@WeibullRalt], 
`ReliaGrowR` [@ReliaGrowR] for Reliability Growth Analysis, and `learnr` 
[@learnr], a framework for building interactive learning modules.  

The learning modules are designed to be interactive and engaging, with a
focus on practical applications. Each module includes a mix of instructional content, 
code examples, and exercises to reinforce learning. The modules are self-paced,
allowing learners to progress at their own speed. 

The original learning modules were provided in a series of workshops, where each 
workshop covered a specific module over a 1-2 hour period. These workshops were 
designed to be completed in a classroom setting with an instructor. The current version 
of the modules has been adapted for self-paced learning, but they can still be used 
in a classroom setting with an instructor. 

To adopt the modules for classroom use, instructors can either access them 
via the project website or install the package and use the functions directly. 
Instructors can also modify the modules to fit their specific needs, as the source code is 
available on the project repository. 

# Usage

The package includes three interactive learning modules, which can be run locally or
hosted on a web server. Users can run the modules in any R environment 
by calling the `ram()`, `lda()`, or `rt()` functions.

`ram()` is a quick reference for common Reliability, Availability, and Maintainability
(RAM) concepts. The learning objectives include defining key reliability metrics, 
including reliability, availability, and failure rate, Describing the significance 
of MTTR, MTTF, and MTBF in reliability engineering, calculating probability of failure 
using given reliability data, interpreting $B_n$ or $L_n$ life values in the context 
of product reliability, differentiating between different reliability measures. 

`lda()` provides an introduction to Life Data Analysis. 
The learning objectives include describing the purpose of Weibull analysis in reliability 
engineering, differentiating between types of data censoring, including right-censored 
and interval-censored data, differentiating between different Weibull models (2-parameter 
Weibull, 3-parameter Weibull, and Weibayes, applying Median Rank Regression (MRR) 
and Maximum Likelihood Estimation (MLE) estimation methods to sample datasets, interpreting
results using plotting methods, including probability plots and contour plots. 

`rt()` provides an introduction to Reliability Testing. The 
learning objectives include defining key reliability growth concepts, including 
Crow-AMSAA and Duane models, fitting a reliability growth model to real-world data
using R, interpreting reliability growth plots and identifying trends, applying 
the Crow-AMSAA model to assess reliability growth, explaining fundamental concepts
of accelerated life testing, including the use of Arrhenius and Power Law Models, 
conducting an accelerated life test with real-world datasets, utilizing R for analysis,
analyzing plots that illustrate the relationships in accelerated life testing, identifying
key patterns and data trends, and utilizing Arrhenius and Power Law models to evaluate 
the impact of stress factors on product reliability. 

The modules can also be accessed in a browser at 
[paulgovan.shinyapps.io/RAMAnalysis/](https://paulgovan.shinyapps.io/RAMAnalysis/), 
[paulgovan.shinyapps.io/LifeDataAnalysis/](https://paulgovan.shinyapps.io/LifeDataAnalysis/), 
and [paulgovan.shinyapps.io/ReliabilityTesting/](https://paulgovan.shinyapps.io/ReliabilityTesting/).

![](https://github.com/paulgovan/ReliaLearnR/blob/master/inst/paper/ReliaLearnR.png?raw=true)<!-- -->

The package also includes several helper functions for common RAM calculations. These functions
make it easy to apply the concepts covered in the RAM module.

* `rel()` - reliability function
* `avail()` - availability function
* `mttf()` - mean time to failure
* `mtbf()` - mean time between failure
* `fr()` - failure rate

The project documentation includes installation instructions for `ReliaLearnR`
and the required dependencies, examples of running the programs, and references 
to previous work used to build the modules. The documentation also references more
resources for users interested in learning more. These resources include 
`ReliaPlotR` [@ReliaPlotR], an R package for interactive reliability analysis
plots, and `ReliaShiny` [@ReliaShiny], a shiny [@shiny] web application for 
reliability analysis.

Contributions are welcome from the community. Users can submit pull requests, 
report issues, or suggest enhancements through the repository, which includes contributing 
guidelines.

# Motivation

This project began as an effort to build upon a reliability program developed at 
a major technology company. The original program proved to provide a strong foundation, 
providing a structured learning opportunity that helped many early-career professionals 
understand and apply the fundamental concepts of reliability engineering.
Over time, however, the proprietary nature of the program limited accessibility 
and adaptability. 

Recognizing the importance of keeping reliability learning both relevant and accessible, 
this project was initiated to create an open-source framework for teaching reliability 
analysis. By leveraging this framework, this project aims to reach a broader audience, 
encourage collaboration, and ensure that learning resources can evolve as needs and 
priorities change.

# Acknowledgements

The author acknowledges the creators of the original Reliability Program that inspired
this project.

# References
