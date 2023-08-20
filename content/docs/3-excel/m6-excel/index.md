---
bookHidden: true
bookSearchExclude: true
weight: 20
title: "M6 Excel Topics"
subtitle: "Topics in Insurance, Risk, and Finance [^1]"
author: "Professor Benjamin Avanzi"
institute:  |
  ![](../../../../static/img/PRIMARY_A_Vertical_Housed_RGB.png){width=1.2in}  
date: '20 August 2023'
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

## List of prerequisite

See [`prerequisite knowledge on the website`](https://topics-actl.netlify.app/docs/0-prerequisite-knowledge/). Some extracts:

- Autofill: Chapter 3, p. 105-116, and p. 298-301
- Named ranges and constants: Chapter 7, page 312-332
- Absolute and mixed cell references (\$): Chapter 7, pages 332-342
- New Excel 2019 functions (IFS, MAXIFS, MINIFS): Chapter 8, pages 381-398
- Formula Auditing: Chapter 9, p. 436-439
- Paste special (incl, e.g. `Transpose`): Chapter 11, pages 518-530

Page references are for Slager and Slager (2020), see [`link here`](https://link.springer.com/book/10.1007/978-1-4842-6209-2)

# General etiquette and tools

## Etiquette

You should build your spreadsheet with (at least) the following **objectives** in mind:

1.  so as to minimise chances or error (accuracy)
2.  so as to minimise unnecessary calculations (efficiency)
3.  so as to make the structure as clear as possible (transparency)
4.  so as to make updates, changes and extensions possible and easy (extendibility)
5.  so as to allow someone else to use it easily (user friendliness)
6.  so as to allow someone else to verify it easily (auditability)

Those are, of course, interconnected. We could add more (for instance, automation of data input via an API, automation of communication objects, etc…).

## Principles

There is no single way to achieve the objectives above, but there are a number of principles that one could list that contribute to those objectives:

- Have a separate tab that collects all your assumptions that are valid for the whole spreadsheet (1, 3, 4, 5, 6)
  - Include some explanations about the source/justification of those assumptions.
  - Give your assumptions names (for instance, the technical rate of interest to calculate life insurance could be called `techint` or similar, for ease of later reference, and to make formulas more easily readable)
- Also include your data sets in separate table (1, 3, 4, 5, 6)
  - Name your data (including columns and/or rows if possible; e.g. `FIFA WWC` in the spreadsheet; see also Named ranges and constants: Chapter 7, page 312-332)

------------------------------------------------------------------------

- Consider colouring / contouring input and output differently (3, 5)
  - This is not always advisable, but if you have a large model with relatively few input (e.g. purchase price and interest rate for a propoerty mortgage schedule) and/or few outputs (e.g. NPV) then this achieves many of the objectives
- Use named ranges and variables as much as possible (1, 3, 5, 6)
- Use more advanced formulas if shorter, and avoid too much nesting (1, 3, 4, 5, 6)

## Tools for auditing

### Dependents and precendents

Use of dependents / precedents, e.g.:

1.  go to tab `Dependents - Precedents - PPCI`
2.  click on one of the outstanding losses
3.  make sure the formula tool tab is live
4.  click on the “trace precedents” sequentially

This will highlight dependence of each cell to previous cells, sequentially.

This is useful for

- understanding the structure of a spreadsheet
- check formulas (audit)
- debug issues

(Formula Auditing: Chapter 9, p. 436-439)

### Show formulas

- The “Formulas” tool tab should have a “Show formula” tile. This will replace all numeric values by formulas.
  - This is helpful to check what numbers are hard coded, and which are results of calculations. Together with dependents, it helps seeing if everything is as dynamic as it should.
- If you want a formula to be shown all the time start with an apostrophe `'`, and the formula will show as text.

(Formula Auditing: Chapter 9, p. 436-439)

## Tools for analysing data

### Pivot tables

- Pivot tables are often considered as very difficult to master, but they are not that difficult to start with.
- Example (in [`spreadsheet`]()): FIFA WWC

## Advanced formulas

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
