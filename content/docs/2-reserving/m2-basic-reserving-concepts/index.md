---
bookHidden: true        
bookSearchExclude: true
weight: 10
title: "M2 Basic Reserving Concepts"
subtitle: "Topics in Insurance, Risk, and Finance [^1]"
author: "Professor Benjamin Avanzi"
institute:  |
  ![](../../../../static/img/PRIMARY_A_Vertical_Housed_RGB.png){width=1.2in}  
date: '26 July 2023'
output:
  beamer_presentation:
    toc: true
    number_sections: true
    df_print: kable
    slide_level: 3
    theme: "CambridgeUS"  
    colortheme: "dolphin"  
    fonttheme: "default"
bibliography: ../../../../static/libraries.bib
header-includes:
  - \graphicspath{{../../../../static/}}
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
  - \pgfdeclareimage[height=1cm]{university-logo}{../../../../static/img/PRIMARY_A_Vertical_Housed_RGB.png}
  - \pgfdeclareimage[height=2.5cm]{university-logo2}{../../../../static/img/PRIMARY_A_Vertical_Housed_RGB.png}
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
  - \newcommand{\adv}{$\maltese$}
classoption: t,handout 
---

# Introduction

## Claims liabilities

### Definition

- Generally in insurance, premiums are collected first, before coverage is provided. The insurer can’t consider this premium as income before coverage is provided.
- Furthermore, as times goes by, the insurer does not know instantly how much losses it will have to pay (e.g., delays in notification, delays in payments)
- This gives rise to two types of liabilities:
  - **Unearned premium liability**: an amount set aside for covering losses of coverage *not yet provided*, but where a premium has already been collected;
  - **Outstanding claim liability**: an amount set aside for for covering losses corresponding to coverage that *has already been provided*, but where payments are still expected to occur.
- These take a significant proportion of an insurer’s balance sheet, often multiple times its equity, as exemplified in the IAG example (forthwith)
- It is the actuary’s responsibility to determine those amounts - a huge responsibility!

### The case of IAG

Insurance Australia Group is one of the largest Australian general insurers (the largest under some measures)

Its latest Balance Sheet (as at 31 December 2022), see [`page 20`](https://www.iag.com.au/sites/default/files/Documents/Results%20%26%20reports/IAGL-1H23-Financial-statements.pdf) reads

- Assets
  - Total: 34,428m (100%)
- Liabilities
  - Unearned premium liability: 7,084m (20.6%)
  - Outstanding claims liability: 13,560m (39.4%)
- Equity
  - Total: 6,819m (19.8%)

It is worth noting that IAG holds 2.01 times the APRA “Prescribed Capital Amount” (PCA), see [`F on page 12`](https://www.iag.com.au/sites/default/files/Documents/Results%20%26%20reports/IAGL-1H23-Financial-statements.pdf).

See https://www.iag.com.au/results-and-reports to dowload the latest financial statements of IAG.

# The claims process

## General

<img src="../../../../../../../../../../../img/module-2/Figure_1_1.png" width="100%" style="display: block; margin: auto;" />

## IBNR claims

## Inflation

# Estimates of outstanding loss liability

## General

<img src="../../../../../../../../../../../img/module-2/Figure_1_2.png" width="100%" style="display: block; margin: auto;" />

------------------------------------------------------------------------

<img src="../../../../../../../../../../../img/module-2/Figure_1_3.png" width="100%" style="display: block; margin: auto;" />

## Components of outstanding loss liability

### Cash flows

<img src="../../../../../../../../../../../img/module-2/Figure_1_4.png" width="100%" style="display: block; margin: auto;" />

### Claims inflation

### Superimposed inflation

(not assessable)

### Loss adjustment expenses

### Investment income

### Recoveries

# Loss reserving

## General

## In Australia

### Outstanding claims liability in Australia

APRA’s [`GRS 210 (where "RS" stands for "Reporting standards")`](https://www.apra.gov.au/sites/default/files/reporting_standard_grs_210.0_g_outstanding_claims_liability_insurance_risk_charge_0.pdf) says:

*The valuation of outstanding claims liabilities for each class of business must comprise:*

1)  *a central estimate (refer below); and*
2)  *a risk margin (refer below) that relates to the inherent uncertainty in the central estimate values.*

------------------------------------------------------------------------

Furthermore, it continues on by clarifying:

*The valuation of insurance liabilities (i.e. outstanding claims liabilities and premiums liabilities) reflects the individual circumstances of the Level 2 insurance group. In any event, the value of insurance liabilities must be the greater of a value that is:*

1)  *determined on a basis that is intended to value the insurance liabilities of the Level 2 insurance group at a 75 percent level of sufficiency; and*
2)  *the central estimate plus one half of a standard deviation above the mean for the insurance liabilities of the Level 2 insurance group.*

There’s a lot more information in the document.

### Solvency capital requirements in Australia

- Additionally, solvency requirements (look for “GPS”, where “PS” stands for “Prudential Standards”) require insurers to hold capital corresponding (typically) to a 99.5-ile at the company’s level (including diversification benefits), which require knowledge.
- This is similar in Europe with Solvency II.
- Of course, it is a little more complicated than that, but the main point is that you might need to work out the distribution of payments quite far in the tail.

# Data

# References

*Selected references:*

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-Tay00" class="csl-entry">

Taylor, Greg. 2000. *Loss Reserving: An Actuarial Perspective*. Huebner International Series on Risk, Insurance and Economic Security. Kluwer Academic Publishers.

</div>

</div>

[^1]: References: Chapter 1 of Taylor (2000) \| `\(\; \rightarrow\)` [](https://gim-am3.netlify.app/output/23-Top-M2-lec.pdf)
