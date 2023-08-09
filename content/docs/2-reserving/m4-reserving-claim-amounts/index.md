---
bookHidden: true
bookSearchExclude: true
weight: 20
title: "M4 Reserving Claim Amounts"
subtitle: "Topics in Insurance, Risk, and Finance [^1]"
author: "Professor Benjamin Avanzi"
institute:  |
  ![](../../../../static/img/PRIMARY_A_Vertical_Housed_RGB.png){width=1.2in}  
date: '10 August 2023'
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

# Case estimation (3.1)

## Case estimates

- When a claim is notified, the insurer’s employee who manages the claim (the “claims adjuster”) typically formulates an estimate of the cost of the claim and records it in the system.
- This estimate is typically adjusted over time as payments are made and additional information becomes available.
- These is called a “**case estimate**” (equivalently, “individual estimate”, “manual estimate”, “physical estimate”).
- The good thing about case estimates is that they are specific to the claim, and are an educated, intelligent guess of the cost of them, rather than a cold, myopic statistical estimate.
- The “bad” thing is that they are very subjective, and are subject to (potentially dangerous) systematic biases.

------------------------------------------------------------------------

You can think of the evolution of a claim cost as two parallel paths; consider those two examples (Figure 2 of Avanzi, Taylor, and Wang (2023)):

<embed src="claim_history.pdf" width="100%" style="display: block; margin: auto;" type="application/pdf" />

Contrary to the evolution of aggregate payments, case estimates are meant to be centered around the expected ultimate cost from the start.

------------------------------------------------------------------------

bla

# References

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-AvTaWa23" class="csl-entry">

Avanzi, Benjamin, Gregory Clive Taylor, and Melantha Wang. 2023. “SPLICE: A Synthetic Paid Loss and Incurred Cost Experience Simulator.” *Annals of Actuarial Science* 17 (1): 7–35.

</div>

<div id="ref-Tay00" class="csl-entry">

Taylor, Greg. 2000. *Loss Reserving: An Actuarial Perspective*. Huebner International Series on Risk, Insurance and Economic Security. Kluwer Academic Publishers.

</div>

</div>

[^1]: References: Chapter 3 & 4 of Taylor (2000) \| `\(\; \rightarrow\)` [](https://gim-am3.netlify.app/output/23-Top-M4-lec.pdf)
