---
bookHidden: true
bookSearchExclude: true
weight: 20
title: "M6 Excel Topics"
subtitle: "Topics in Insurance, Risk, and Finance [^1]"
author: "Professor Benjamin Avanzi"
institute:  |
  ![](../../../../static/img/PRIMARY_A_Vertical_Housed_RGB.png){width=1.2in}  
date: '17 August 2023'
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

# General Considerations

## Why Excel?

- Excel is great to spread data and calculations in a tabular form, and have a visual overview
- Most financial modelling is done in Excel (at least initially)
- In actuarial work, many more advanced codes (in R, Python, C++, C#, VBA, …) often starts with someone playing around in Excel, and once proof of concept is approved, this moves to proper coding
- It is assessed in CM2-B (!)

## Issues with Excel

Excel is notoriously problematic in certain areas:

- Lack of transparency - one can’t see the code unless you click in a cell
- Mistakes can be tiny but have huge consequences in the end (the job of Excel auditor actually exists!)
- Lack of good documentation capability (as opposed to code); this makes collaboration and audit difficult, and creates an operational risk (e.g. builder leaves)
- Lack of rigour in the construction of a model (input, assumptions, intermediary calculations, output)
- Can’t handle (seriously) large data sets
- Sometimes code is a lot easier (e.g. flip a vector around, sum over a diagonal, …)

I know there are counter arguments for all of those, but this presupposes you know what the solutions are (you’ll learn some of those here!)

# Assumed knowledge

See [`prerequisite knowledge on the website`](https://topics-actl.netlify.app/docs/0-prerequisite-knowledge/). Some extracts:

- Autofill: Chapter 3, p. 105-116, and p. 298-301
- Named ranges and constants: Chapter 7, page 312-332
- Absolute and mixed cell references (\$): Chapter 7, pages 332-342
- New Excel 2019 functions (IFS, MAXIFS, MINIFS): Chapter 8, pages 381-398
- Formula Auditing: Chapter 9, p. 436-439
- Paste special (incl, e.g. `Transpose`): Chapter 11, pages 518-530

Page references are for Slager and Slager (2020), see [`link here`](https://link.springer.com/book/10.1007/978-1-4842-6209-2)

# General etiquette and tools

1.  

# References

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-Jos13" class="csl-entry">

Joshi, Mark Suresh. 2013. *Introduction to Mathematical Portfolio Theory*. Cambridge University Press.

</div>

<div id="ref-EE19" class="csl-entry">

Slager, D., and A. Slager. 2020. *Essential Excel 2019*. 2nd ed. Apress.

</div>

</div>

[^1]: References: Chapter 7.1-7.3 and 8.1-8.3 of Joshi (2013) \| `\(\; \rightarrow\)` [](https://gim-am3.netlify.app/output/23-Top-M6-lec.pdf)
