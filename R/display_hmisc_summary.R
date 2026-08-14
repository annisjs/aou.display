#' Display table
#' @param table1 a table returned by summaryM etc in Hmisc
#' @param npct specifies which counts are to be printed to the right of percentages. You can specify "both" to print both numerator and denominator as a fraction, "denominator", "slash" to typeset horizontally using a forward slash, or "none".
#' @export
display_hmisc_summary <- function(table1, npct = "both", ...)
{
  oldopt <- options("browser")
  options(browser = "chrome")
  on.exit(options(oldopt))
  out <- Hmisc::html(table1, caption='',
                     exclude1=F, npct=npct, digits=3,long=T,
                     prmsd=TRUE, brmsd=T, longtable=T, middle.bold=T,
                     vnames = c('names'), ...)
  IRdisplay::display_html(out)
}