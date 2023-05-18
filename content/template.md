---
bookHidden: true
bookSearchExclude: true
title: ""
subtitle: ""
author: "Professor Benjamin Avanzi"
institute:  |
  ![](../../../../static/img/PRIMARY_A_Vertical_Housed_RGB.png){width=1.2in}  
date: '02 February 2022'
output:
  beamer_presentation:
    toc: true
    number_sections: true
    df_print: kable
    slide_level: 3
    theme: "CambridgeUS"  
    colortheme: "dolphin"  
    fonttheme: "default"
# bibliography: ../../../../static/libraries.bib
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
classoption: t,handout
---

# TO BE UPDATED

<!-- <!-- To use the template: --> -->
<!-- 1. Uncomment everything below this line -->
<!-- 2. Uncomment bibliography in the header above and check file path -->
<!-- 3. Remove in the header at the very top (this is to hide the template): -->
<!--   bookHidden: true -->
<!--   bookSearchExclude: true -->
<!-- 4. Rename Title and Subtitle -->
<!-- 5. Remove this list -->
<!-- 6. Use Template -->

<!-- <!-- To include images: --> -->
<!-- ```{r fig.align='center',out.width="100%", echo=F} -->
<!-- include_graphics(sprintf("%s/XXX.png", graphics_path), error = F)  -->
<!-- ``` -->

<!-- ```{r setup, include=FALSE} -->
<!-- library(knitr) -->

<!-- ### Change these two variables to change name of image folder and output file -->
<!-- # -->
<!-- graphics_folder <- "week-X" -->
<!-- output_name <- "21-IAS-XXX-lec" # change latest slides below, too! -->

<!-- ### Do not change the following unless you know what you are doing -->
<!-- # output width -->
<!-- options(width = 70) -->
<!-- source(sprintf("%s/static/slide-setup.R", rprojroot::find_root(".Rprofile"))) -->
<!-- graphics_path <-  sprintf("/img/%s", graphics_folder)    # Directory of where files are kept for this page -->

<!-- if (exists("output_type") && output_type == "beamer") { -->
<!--   graphics_path <-  sprintf("%s/static/img/%s", root_dir, graphics_folder)    # Directory of where files are kept for this page -->
<!-- } -->
<!-- ``` -->

<!-- ```{r, eval=F, include=F} -->
<!-- # Run this chunk to export to pdf -->
<!-- # Make sure that the setup chunk is run first -->
<!-- #  (to set graphics_folder and output_name) -->
<!-- #   -->
<!-- #  The file is also saved before running this file -->
<!-- output_type <- "beamer" -->

<!-- # install.packages("rprojroot") -->
<!-- root_dir <- rprojroot::find_root(".Rprofile")                               # Directory of Project -->
<!-- output_dir <- sprintf("%s/static/output", root_dir)                         # Directory of output pdfs -->
<!-- curr_file <- sprintf("%s/index.Rmd", getwd()) -->
<!-- ### Use this and run the lines from graphics_folder to render() to create pdf -->
<!-- rmarkdown::render(input = curr_file, output_file = output_name, output_dir = output_dir) -->

<!-- ### Other notes to self -->
<!-- #The first 4 lines. -->
<!-- #```{r test, output.lines=4} -->
<!-- #``` -->
<!-- #Remove the first 8 lines. -->
<!-- #```{r test, output.lines=-(1:8)} -->
<!-- #``` -->
<!-- #From 8 to 15. -->
<!-- #```{r test, output.lines=8:15} -->
<!-- #``` -->

<!-- # install.packages("formatR") -->
<!-- # collapse=TRUE #for collapsing output with code -->
<!-- ``` -->

<!-- # References {.allowframebreaks}  -->

