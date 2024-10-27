---
title: 'WeibullR.learnr: An Interactive Introduction to Life Data Analysis'
tags:
  - R
  - life data analysis
  - Weibull analysis
  - reliability
authors:
  - name: Paul B. Govan
    orcid: 0000-0002-1821-8492
    affiliation: 1
affiliations:
 - name: Technical Leader, Reliability and Data Analytics, GE Renewable Energy
   index: 1
date: 10 July 2023
bibliography: paper.bib

---

# Statement of Need

Life data analysis is the study of how things, from machines to people, function over time. Life data shows how long things last or how long before they need to be repaired or replaced. Although numerous learning resources exist, most reference proprietary software that is often unavailable to those hoping to get started with life data. This proprietary software is usually meant for commercial applications and may not be affordable for students or young professionals. `WeibullR.learnr` [@WeibullRlearnr] is an open source set of interactive learning modules, exercises, and functions for learning introductory life data analysis. The primary motivation for the development of `WeibullR.learnr` was to simultaneously introduce the basic concepts and also open source software for analyzing life data. The target audience for this project are beginning practitioners and university students. 

# Description

`WeibullR.learnr` is written in R [@R] and is built using `WeibullR` [@WeibullR], a R package for Life Data Analysis in the tradition of Waloddi Weibull [@Weibull], and `learnr` [@learnr], a framework for building interactive learning modules in R.

Currently, three primary learning modules exist. These modules can be taken in either order and can be taken separately or together. The learning modules are designed to be plug-and-play, but changes can be made by forking the software repository and modifying the fork.

`WeibullR.learnr()` provides an interactive introduction to Life Data Analysis. The learning objectives include basic Weibull analysis, data censoring including right censored data and interval censored data, different types of Weibull models including the 2P Weibull, 3P Weibull, and Weibayes model, parameter estimation methods Median Rank Regression (MRR) and Maximum Likelihood Estimation (MLE), and different plotting methods such as Probability Plots and Contour Plots. The estimation duration for this module is approximately 2 hours. 

`RAMR.learnr()` is a quick reference for common Reliability, Availability, and Maintainability (RAM) concepts. The learning objectives include the basic concepts and application of Reliability, Availability, Mean Time to Repair (MTTR), Mean Time to Failure (MTTF), Mean Time Between Failures (MTBF), Failure Rate, Probability of Failure, and $B_n$ or $L_n$ life. The esimated duration of this module is about 1 hour.

`TestR.learnr()` provides an interactive introduction to Reliability Testing. The learning objectives include defining key reliability growth concepts, including Crow-AMSAA and Duane models; fitting a reliability growth model to real-world data using R; interpreting reliability growth plots and identifying trends; applying the Crow-AMSAA model to assess reliability growth; explaining fundamental concepts of accelerated life testing, including the use of Arrhenius and Power Law Models; conducting an accelerated life test with real-world datasets, utilizing R for analysis; nnalyzing plots that illustrate the relationships in accelerated life testing, identifying key patterns and data trends; utilizing Arrhenius and Power Law models to evaluate the impact of stress factors on product reliability. The estimated duration of this module is about 2 hours.

The modules can also be accessed in a browser at [WeibullR.learnr](https://paulgovan.shinyapps.io/weibullrlearnr/),  [RAMR.learnr](https://paulgovan.shinyapps.io/ramrlearnr/), and [TestR.learnr](https://govan.shinyapps.io/TestRlearnr/).

![](https://github.com/paulgovan/WeibullR.learnr/blob/master/inst/paper/WeibullRlearnr.png?raw=true)<!-- -->

Several helper functions for common RAM calculations are also included. These functions make it easy to apply the concepts covered in this module.

* `rel()` - reliability function
* `avail()` - availability function
* `mttf()` - mean time to failure
* `mtbf()` - mean time between failure
* `serv()` - serviceability factor
* `fr()` - failure rate

The project documentation includes installation instructions for `WeibullR.learnr` and the required dependencies, examples of running the programs, and references to previous work used to build the modules. The documentation also references more resources for learners looking for expanded applications. These resources include `WeibullR.plotly` [@WeibullRplotly], a R package for interactive Weibull probability plots, and `WeibullR.shiny` [@WeibullRshiny], a shiny [@shiny] web application for Life Data Analysis.

This project was inspired by the Reliability Program at a major technology company, which has been well established and received at the company. While the program has been popular, it relies on proprietary software that is not available to all researchers and practitioners. The type of proprietary software has also changed over time, making some of the original learning material obsolete. The main goal of this project is to reach a wider audience through open source resources. These learning modules are not only open to all, but will also evolve with the underlining software. The potential benefits of making these resources available to a broader audience include fostering a community of proficiency, collaboration, and innovation.

Learners are encouraged to try the modules and contribute to the project. The repository includes a Contributor Code of Conduct for making contributions. Issues and requests may be filed by raising an Issue or Pull Request.

# Acknowledgements

The author would like to acknowledge the authors of the Reliability Program that originally inspired this project.  

# References
