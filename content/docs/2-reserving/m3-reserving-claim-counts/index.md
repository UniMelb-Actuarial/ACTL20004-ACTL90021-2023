---
bookHidden: true
bookSearchExclude: true
weight: 20
title: "M3 Reserving Claim Counts"
subtitle: "Topics in Insurance, Risk, and Finance [^1]"
author: "Professor Benjamin Avanzi"
institute:  |
  ![](../../../../static/img/PRIMARY_A_Vertical_Housed_RGB.png){width=1.2in}  
date: '01 August 2023'
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

# Exposure

## General idea

Assume that we there exists `\(e(i)\)` so that we can write

`$$E[N(i,j)] \equiv e(i) \mu(j),$$`
where (this is important), `\(\mu(j)\)` does **not depend on `\(i\)`**.

- `\(e(i)\)` will be called the **exposure** in period of occurrence `\(i\)` (for instance, “car-years”).
- `\(\mu(j)\)` may be interpreted as **relative claim frequency** in period `\(j\)` (per unit of exposure).
- The cumulative version
  `$$\frac{E[N(i,\cdot)]}{e(i)} = \mu(\cdot)$$`
  is the **relative frequency of claim occurence per period**.

------------------------------------------------------------------------

In practice, this is not always achievable, that is,
`$$\frac{E[N(i,j)]}{e(i)} = \mu(i,j),$$`
with only *weak dependency* of `\(\mu(i,j)\)` on `\(i\)`.

# IBNR claims

## Exposure based methods

### Allowing for an `\(i\)` effect in `\(\mu\)`

Assume
$$ \mu(i,j) = f(i) v(j),$$
where `\(f(i)\)` is some known function (otherwise determined).

We have then
`$$E[N(i,j)] = e(i)f(i)v(j).$$`
We will discuss how to work with this.

### Examples of `\(f(i)\)`

- A simple example could be:
  $$ f(i) = \alpha + \beta i,$$
  which leads to a linear adjustment across rows (periods of origin `\(i\)`) to development “base frequency” `\(v(j)\)` (for given development period `\(j\)`).
- It is unlikely to hold across all columns without modification, so one could extend this to
  $$ \mu(i,j) = f_j(i) v(j)$$
  so that `\(\alpha\)` and `\(\beta\)` will (potentially) depend on `\(j\)` as well
- This could lead to a highly over-parametrised model.

------------------------------------------------------------------------

- In practice, changes in “development speed” often occur in the first two development periods mostly, and in opposite direction (justifying a separate `\(\alpha\)` and `\(\beta\)`).
- We could then use
  `\begin{eqnarray*} \mu(i,0) &=& f_0(i) = \alpha_0 + \beta_0 i, \\ \mu(i,1) &=& f_1(i) = \alpha_1 + \beta_1 i, \\ \mu(i,j) &=& v(j), j=2, 3, \ldots. \end{eqnarray*}`

### Estimating `\(N(i,j)\)`

Now, assume
`$$N(i,j)\sim \text{Poisson}(e(i)f(i)v(j))$$`
so that (assuming independence across periods of origin)
`$$N(\cdot,j)\sim \text{Poisson}\left(v(j) \sum_i e(i)f(i)\right).$$`
Then we can show that
`$$\hat{v}(j) = \frac{N(\cdot,j)}{\sum_i e(i)f(i)}$$`
(over existing data) is a maximum likelihood, minimum variance, unbiased, consistent estimator (in short, a good one!).

------------------------------------------------------------------------

In the end, our estimator for `\(E[N(i,j)]\)` is
`$$\widehat{E[N(i,j)]} = e(i)f(i)\left[ \sum_{j=I-i+1}^I + \sum_{j=I+1}^\infty \right] \hat{v}(j).$$`

- the first `\(\sum\)` include `\(\hat{v}\)`’s estimated from available data
- the second `\(\sum\)` cannot be estimated from data, and will be extrapolated from the former set (e.g. linear regression or more typically, log-linear regression as exemplified later).

### Example

Taylor (2000), Table 2.1 and Table 2.2 provide an example of such calculations, where `\(f(i)=1\)`.

## Normalised methods

### Motivation

- In the previous section, one hoped that claim notification rates `\(\mu\)` (as proportions of exposure `\(e\)` ) would consistent (constant) across periods of origin `\(i\)`, or at least approximatively or predictively so.
- There may not always exist such an exposure.
- For instance, consider Public Liability of a manufacturer of toys:
  - would time a good measure of exposure? or revenue?
  - this would unlikely to be satisfactory as the mix of business (which toys are sold and at what level) is likely to change all the time

### The idea

- We keep the idea of multiplicative structure, but `\(\mu\)` would multiply something else than `\(e(i)\)`, say `\(\alpha(i)\)`:
  $$ E[N(i,j)] = \alpha(i)\mu(j).$$
- We will “anchor” our prediction on a subset `\(S\)` of existing data, say:
  $$ \alpha(i) \approx \sum_{m \in S} N(i,m),$$
  where `\(S\)` is typically the first `\(m\)` development periods for each period of origin `\(i\)`.
- This should work well if these are deemed a good indicator of the propensity to claim in a given period `\(i\)`.

------------------------------------------------------------------------

- Then we assume that the ratio
  `$$\frac{E[N(i,j)]}{E\left[ \sum_{m \in S} N(i,m) \right]} = \frac{\alpha(i) \mu(j)}{\alpha(i)\sum_{m \in S} \mu(m)} = \frac{ \mu(j)}{\sum_{m \in S} \mu(m)},$$`
  which is independent of `\(i\)`, can be estimated from data and used to “complete the rectangle”.

# References

*Selected references:*

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-Tay00" class="csl-entry">

Taylor, Greg. 2000. *Loss Reserving: An Actuarial Perspective*. Huebner International Series on Risk, Insurance and Economic Security. Kluwer Academic Publishers.

</div>

</div>

[^1]: References: Chapter 2 of Taylor (2000) \| `\(\; \rightarrow\)` [](https://gim-am3.netlify.app/output/23-Top-M2-lec.pdf)
