---
bookHidden: false
bookSearchExclude: false
weight: 20
title: "M5 Reserving Combination"
subtitle: "Topics in Insurance, Risk, and Finance [^1]"
author: "Professor Benjamin Avanzi"
institute:  |
  ![](../../../../static/img/PRIMARY_A_Vertical_Housed_RGB.png){width=1.2in}  
date: '01 November 2023'
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
  - \usepackage{marvosym}
  - \usepackage{amsmath}
  - \usepackage{amsthm}
  - \usepackage{amsfonts}
  - \usepackage{array}
  - \usepackage{booktabs}
  - \usepackage{verbatim}
  - \usepackage[english]{varioref}
  - \usepackage{natbib}
  - \usepackage{hyperref}
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

# Background

## Summary

We have seen covered a number of reserving methods:

1.  unadjusted chain ladder on paid losses
2.  inflation adjusted chain ladder on paid losses
3.  unadjusted chain ladder on incurred losses
4.  inflation adjusted chain ladder on incurred losses
5.  separation
6.  payments per claim incurred (PPCI)

The IBNR claims (counts) were estimated according to a number of methods, too:

- exposure
- normaliser
- chain ladder

## Motivation

- All those methods are producing outstanding liability \$ estimates in nominal terms.
- There are a number of differences:
  - whether inflation is accounted for explicitly (2, 4, 5, 6) or not (1, 3)
  - whether inflation is assumed for past data (2, 4), or a result of the method (1, 3, 5, 6)
  - whether paid (1, 2, 6) or incurred (3, 4, 5) losses are used
  - whether aggregate amounts (1, 2, 3, 4) or amounts per claim (5, 6) are used. The latter require an estimate of IBNR counts.
- All methods have strengths and weaknesses.

There is obviously a good mix of assumptions and approaches. Which one should we choose? Or should we combine them?

## Criteria for choice

Decision factors include:

- analytical properties of the various models
  - e.g., we know there has been a change in the past, that affected the development of claims. Can the method allow for that?
- average claim sizes for various periods of origin
  - e.g., do those average claims make sense, given our (also qualitative) knowledge of the claims development processes??
  - e.g., do trends in average claim size agree with our beliefs around claims inflation and superimposed inflation?
- relation of forecasts of liability to case estimates
  - e.g., they are not directly comparable, but the evolution of the ratio should be smooth enough.

# Combining the results of the different models

## Idea

- Let `\(\hat{P}_h^*(i,j)\)` be the estimate of outstanding liability of model `\(h=1,2\ldots\)`, at end of development period `\(j\)` and for period of origin `\(i\)`.
- Assume the we want to combine such estimates (at the end of experience period `\(k\)` ) as follows:
  `$$\overline{\hat{P}^*}(i,k) = \sum_h w_h(i) \overline{\hat{P}^*_h}(i,k),$$`
  where `\(\overline{\hat{P}^*_h}(i,k) = \hat{P}_h^*(i,k-i)\)`, `\(w_h(i)\)` are weights allocated to to model `\(h\)`,
  `$$\sum_h w_h(i)=1.$$`
- Note that in general those weights depend on `\(i\)` as well; different reserving models will typically perform better for different levels of maturity (in complex environments - understand “non chain ladder like”).

------------------------------------------------------------------------

Those weights can be determined in different ways:

- Judgmentally, by considering the properties of the models available, and their respective strenghts and weaknesses for different `\(i\)`.
- With respect to some sort of objective criteria.
  - This is done to some extent in the book (Chapter 12).
  - This has been done a lot more rigorously only very recently by [Avanzi et al. (2023)](https://arxiv.org/abs/2206.08541) via ensembling, which was awarded the 2023 Hachemeister Prize by the American Casualty Actuarial Society (CAS).
  - It is still a relevant topic!

# Allowance for prior expectations

## Idea

- Imagine one might to combine a “prior expectation” (or belief) with the estimate of liability provided by a method (or ensemble thereof).
- This can be done in a way which is routinely referred to as “credibility weighting” by actuaries:
  $$ \text{estimate} = [1-z(i)] \overline{P_0^*}(i,k) + z(i) \overline{\hat{P}^*}(i,k),$$
  where
  - `\(\overline{\hat{P}^*}(i,k)\)` is the quantity defined earlier
  - `\(\overline{P_0^*}(i,k)\)` is the prior expectation (examples later), and
  - `\(z(i)\)` is the credibility assigned to the model estimate `\(\overline{\hat{P}^*}(i,k)\)`
- One probably should give more credibility to models in more mature years (small `\(i\)` ).
- The formula above will yield equivalent results if `\(z(i)\)` is applied on incurred amounts instead (see Taylor (2000)).

## Choice of credibility weights

### Bornhuetter-Ferguson

Bornhuetter and Ferguson (1972) suggested the most simple approach, which is to use either

- `\(z(i)=0\)`: outstanding liability is exclusively calculated on the basis of prior expectations; or
- `\(z(i)=1\)`: outstanding liability is entirely based on models, ignoring prior expectations totally.

The “textbook”, “plain” vanilla Bornhuetter-Ferguson (BF):

- applies `\(z(i)\)` on all or only some subset of the most immature years
- calculates the prior expectation based on premium and loss ratios

An example is provided below.

### More generally

The following would make sense:

- `\(z(i)=0\)` when no information has been collected (start of development period 0);
- `\(z(i)=1\)` at the end of the running off period (when all claims and their costs are known and certain);
- some monotonic progression between those two extremes.

For instance, `\(1/\pi\)` from chain ladder:

- It satisfies the criteria above:
- It is somewhat reflective of the amount of information gathered so far
- In particular, a highly leveraged line, which would benefit from averaging with prior expectation, will have a very low `\(z(I) = 1/\pi(0)\)`.

## Prior expectations

In this section we review some possible choices for the “prior expectations”.

### BF loss ratio

The loss method proceeds as follows. For each `\(i\)`

- Define `\(EP(i)\)` as the gross aggregate premium earnt for period of origin `\(i\)`.
- Define `\(C(i)\)` as the aggregate sum of all payments made for period of origin `\(i\)` (the ultimate).
- The loss ratio is then defined as
  $$ LR(i) = \frac{C(i)}{EP(i)}.$$

The method projects `\(LR(i)\)` from past values and infers `\(C(i)\)` from observable `\(EP(i)\)`. We have then (assuming chain ladder development patterns)
`$$\overline{P_0^*}(i,k) = LR(i)EP(i)\left( 1-\frac{1}{\pi(k)}\right)$$`
which is typically applied with `\(z(i)=1\)` in immature (or all) years.

### Example

Consider the following triangle (cumulative claims):

| Origin |  EP   | DY1 | DY2 | DY3 | DY4 |
|:------:|:-----:|:---:|:---:|:---:|:---:|
|  2020  |  860  | 473 | 620 | 690 | 715 |
|  2021  |  940  | 512 | 660 | 750 |     |
|  2022  |  980  | 611 | 700 |     |     |
|  2023  | 1,020 | 647 |     |     |     |

It is assumed that the ultimate loss ratios for
underwriting years 2021-2023 are expected to be in line with year 2020.

------------------------------------------------------------------------

First calculate the development factors:
`$$\begin{aligned} \widehat{f}_1 &= \frac{620+660+700}{473+512+611} = 1.2406 \\ \widehat{f}_2 &= \frac{690+750}{620+660} = 1.125 \\ \widehat{f}_3 &= \frac{715}{690} = 1.0362 \end{aligned}$$`
Then calculate the loss ratio `\(LR\)` and the prior expectations of ultimate:
`$$\begin{aligned} LR(1)EP(1) &=  LR \cdot 860 = 715 \Longrightarrow LR = 0.8314 \\ LR(2)EP(2)  &= LR \cdot 940 = 781.52\\ LR(3)EP(3)  &= LR \cdot 980 = 814.77\\ LR(4)EP(4)  &= LR \cdot 1020 = 848.02 \end{aligned}$$`

------------------------------------------------------------------------

Now, we have

`$$\begin{aligned} \text{outstanding} &= \sum_{i=1}^4 \overline{P_0^*}(i,4) \\ &= \sum_{i=1}^4 LR(i)EP(i)\left(1-\frac{1}{\pi(i)}\right) \\ &= 0+27.30+115.82+261.64 \\ &=404.76. \end{aligned}$$`

Remember that `\(\pi\)` is normally defined as a `\(\pi(j)\)`, so that `\(\pi(1)\)` applies to that year where we have only `\(j=1\)` cell available - the last row. Similarly, `\(\pi(3)\)` is the one that applies to the amount in the diagonal that is at `\(j=3\)` - here 781.41.

### Extensions

- The problem with the plain vanilla BF is that it does not specify objectively how `\(LR(i)\)` is determined. A priori, this is too judgmental.
- There are a number of methods which try to make this choice more objective, such as “modified BF”, “Cape Cod”, …

# References

<div id="refs" class="references csl-bib-body hanging-indent" entry-spacing="0">

<div id="ref-AvLiWoXi23" class="csl-entry">

Avanzi, Benjamin, Yanfeng Li, Bernard Wong, and Alan Xian. 2023. “Ensemble Distributional Forecasting for Insurance Loss Reserving.”

</div>

<div id="ref-BoFe72" class="csl-entry">

Bornhuetter, R., and R. Ferguson. 1972. “The Actuary and <span class="smallcaps">IBNR</span>.” *Proceedings of The Casualty Actuarial Society* 59: 181–95.

</div>

<div id="ref-Tay00" class="csl-entry">

Taylor, Greg. 2000. *Loss Reserving: An Actuarial Perspective*. Huebner International Series on Risk, Insurance and Economic Security. Kluwer Academic Publishers.

</div>

</div>

[^1]: References: Chapter 5 of Taylor (2000) \| `\(\; \rightarrow\)` [](https://gim-am3.netlify.app/output/23-Top-M5-lec.pdf)
