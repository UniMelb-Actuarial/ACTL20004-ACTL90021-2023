---
weight: 35
title: "M1 Introduction"
subtitle: "General Insurance Modelling : Actuarial Modelling III [^1]"
author: "Professor Benjamin Avanzi"
institute:  |
  ![](../../../static/img/PRIMARY_A_Vertical_Housed_RGB.png){width=1.2in}  
date: '27 February 2023'
output:
  beamer_presentation:
    toc: true
    number_sections: true
    df_print: kable
    slide_level: 3
    theme: "CambridgeUS"  
    colortheme: "dolphin"  
    fonttheme: "default"
bibliography: ../../../static/libraries.bib
header-includes:
  - \graphicspath{{../../../static/}}
  - \usepackage{color}
  - \usepackage{hyperref}
  - \usepackage{marvosym}
  - \usepackage{amsmath}
  - \usepackage{amsthm}
  - \usepackage{amsfonts}
  - \usepackage{array}
  - \usepackage{booktabs}
  - \usepackage{verbatim}
  - \usepackage[english]{varioref}
  - \usepackage{natbib}
  - \usepackage{actuarialangle}
  - \usepackage{pgfpages}   
  - \pgfdeclareimage[height=1cm]{university-logo}{../../../static/img/PRIMARY_A_Vertical_Housed_RGB.png}
  - \pgfdeclareimage[height=2.5cm]{university-logo2}{../../../static/img/PRIMARY_A_Vertical_Housed_RGB.png}
  - \logo{\raisebox{-3ex}[0pt]{\pgfuseimage{university-logo}}}
  - \AtBeginSection[]{     \begin{frame}    \tableofcontents[sectionstyle=show/shaded,subsectionstyle=hide/hide/hide]     \end{frame}  \addtocounter{framenumber}{-1}}
  - \AtBeginSubsection[]{     \begin{frame}    \tableofcontents[sectionstyle=show/hide,subsectionstyle=show/shaded/hide]      \end{frame}  \addtocounter{framenumber}{-1}} # to remove this you need to also change "slide_level" to 2
  - \definecolor{DolphinBlue}{RGB}{51,44,159}
  - \setbeamerfont{section in toc}{size=\normalsize}
  - \setbeamerfont{subsection in toc}{size=\normalsize}
  - \pretocmd{\tableofcontents}{\setlength{\parskip}{.2em}}{}{}
  - \setbeamertemplate{footline}{\hspace*{.4em} \raisebox{1.5ex}[0pt]{\textcolor{DolphinBlue}{\insertframenumber/\inserttotalframenumber}}}
  #- \setbeamertemplate{footline}{\hspace*{.4em} \raisebox{1.5ex}[0pt]{\textcolor{DolphinBlue}{\insertframenumber}}}
  #- \apptocmd{\tableofcontents}{\linespread{1.0}}{}{}
  # - \setbeamerfont{subsubsection in toc}{size=fontsize}
classoption: t,handout
---

# The nature of general insurance (MW 1.1)

## General insurance

- also called **non-life**, or **property and casualty**
  - Includes: car, liability, property, workers compensation, marine, credit, legal, travel, health, …
- for more background:
  - see [`general insurance practice`](https://actl10001.netlify.app/docs/actuarial-practice/general-insurance/) for further details about the general insurance area
  - see [`Pooling and Insurance`](https://actl10001.netlify.app/docs/actuarial-techniques/pooling-and-insurance/) for further details about the law of large numbers mechanism

## Risk components

Risk / randomness comes from different sources:

- Pure randomness (also called “process risk” or “aleatoric risk”)
  - Nature of the risk
  - Can be “controlled” by volume (law of large numbers)
    `$$\lim_{n\rightarrow \infty} \Pr \left[ \left| \frac{1}{n} \sum_{i=1}^n Y_i - E[Y_i]\right| \ge \epsilon\right] = 0$$`
- Model risk (“epistemic risk”)  
  *All models are wrong, some are useful*
  - model world `\(\neq\)` real world
  - even if model was right, wrong parameters
  - non-stationarity

`\(\Longrightarrow\)` we need to add a buffer to the cost of the risk transfer.

------------------------------------------------------------------------

Insurance organises a risk transfer:

- costing of this transfer is an actuarial problem
- makes sense only because people are risk averse, unless insurance is forced: this is because the cost of insurance (the “gross premium”) is always higher than the expected value

## Premium components

`\begin{eqnarray*} \text{gross premium} &=& \text{pure risk premium} \\ && + \text{risk margin} \\ && + \text{profit margin} \\ && - \text{financial gains on investments} \\ && + \text{underwriting expenses} \\ && + \text{loss adjustment expenses (LAE)} \\ && (+ \text{taxes}) \end{eqnarray*}`

This is not necessarily the premium that is charged to customers, but calculating the right hand side is one of the actuary’s jobs.

# Connections with the course contents

## Modules

- We typically insure multiple risks:
  - We need to know how to aggregate them (Module 2)
  - We need distributions for counts and sums, including random sums (Modules 2, 3, and 4)
  - Those risks may not be independent (Module 5)
- We need a distribution for the losses
  - The “pure risk premium” is the expectation of the risk (Module 3)
  - The “risk margin” is typically function of the distribution of the insured loss–a quantile, or a function of variance (Modules 3 and 4)
  - Sometimes those risks can be extreme (Module 6)
- Losses arise over time, and there may be time dependencies (relationships across time) that are relevant to the modelling  
  (Modules 7-10)

## R packages used in this course

The following packages are useful and should be installed and loaded on your machines:

- `stats` is a generalist package providing statistical functions
- `MASS` (“Modern Applied Statistics with S”) is a powerful package for data analysis
- `tidyverse` is a package for wrangling and preparing data for analysis
- `actuar` is a package with functions that are specific to actuarial studies;
  see Dutang, Goulet, and Pigeon (2008)
- `fitdistrplus` builds on the abovementioned packages for advanced fitting features;
  see Delignette-Muller and Dutang (2015)
- [`VineCopula` package](https://cran.r-project.org/web/packages/VineCopula/readme/README.html#bivariate-copula-modeling-the-bicop-family) will be used extensively in Module 5 (Copulas)
- `evir` and `extRemes` will be used extensively in Module 6 (Extreme Value Theory);
  see Gilleland and Katz (2016)
- `xts` and `astsa` will be used extensively in Module 7–10  
  (Time Series and Analysis)

------------------------------------------------------------------------

In the lectures that follow, I will indicate which package a function comes from the first time it appears by writing `package::function`, and then will drop the `package::` part as it is not needed once you load that library.
\[Note this allows you to call a specific function from a package without loading it (useful when there are package clashes).\]

# References

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-DMDu15" class="csl-entry">

Delignette-Muller, Marie Laure, and Christophe Dutang. 2015. “Fitdistrplus: An r Package for Fitting Distributions.” *Journal of Statistical Software* 64 (4).

</div>

<div id="ref-DiGoPi08" class="csl-entry">

Dutang, Christophe, Vincent Goulet, and Mathieu Pigeon. 2008. “Actuar: An r Package for Actuarial Science.” *Journal of Statistical Software* 25 (7).

</div>

<div id="ref-GiKa16" class="csl-entry">

Gilleland, Eric, and Richard W. Katz. 2016. “<span class="nocase">extRemes</span> 2.0: An Extreme Value Analysis Package in R.” *Journal of Statistical Software* 72 (8).

</div>

<div id="ref-Wut20" class="csl-entry">

Wuthrich, Mario V. 2022. “Non-Life Insurance: Mathematics & Statistics.” Lecture notes. RiskLab, ETH Zurich; Swiss Finance Institute.

</div>

</div>

[^1]: References: Chapter 1 of Wuthrich (2022) \| `\(\; \rightarrow\)` [](https://gim-am3.netlify.app/output/23-GIM-M1-lec.pdf)
