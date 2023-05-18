## what comes below makes the options size="bla" work; it does not work otherwise; see https://stackoverflow.com/questions/25646333/code-chunk-font-size-in-rmarkdown-with-knitr-and-latex
def.chunk.hook  <- knitr::knit_hooks$get("chunk")
knitr::knit_hooks$set(chunk = function(x, options) {
        x <- def.chunk.hook(x, options)
        ifelse(options$size != "normalsize", paste0("\n \\", options$size,"\n\n", x, "\n\n \\normalsize"), x)
})

hook_output <- knit_hooks$get("output")
knit_hooks$set(output = function(x, options) {
        lines <- options$output.lines
        if (is.null(lines)) {
                return(hook_output(x, options))  # pass to default hook
        }
        x <- unlist(strsplit(x, "\n"))
        more <- "..."
        if (length(lines)==1) {        # first n lines
                if (length(x) > lines) {
                        # truncate the output, but add ....
                        x <- c(head(x, lines), more)
                }
        } else {
                x <- c(more, x[lines], more)
        }
        # paste these lines together
        x <- paste(c(x, ""), collapse = "\n")
        hook_output(x, options)
})


library("formatR")
knitr::opts_chunk$set(
        echo = TRUE,include=TRUE,size="footnotesize",results="markup",
        tidy=TRUE,tidy.opts=list(blank=FALSE,indent=2,arrow=TRUE,width.cutoff = 60))

## Color Format
colFmt <- function(x,color) {
    
    outputFormat <- knitr::opts_knit$get("rmarkdown.pandoc.to")
    
    if(outputFormat == 'beamer') {
        ret <- paste("\\textcolor{",color,"}{",x,"}",sep="")
    } else if(outputFormat == 'html') {
        ret <- paste("<font color='",color,"'>",x,"</font>",sep="")
    } else {
        ret <- x
    }
    
    return(ret)
}

