#' Display table
#' @param table1 a table returned by summaryM etc in Hmisc
#' @export
display_hmisc_summary <- function(table1)
{
  out <- Hmisc::html(table1, caption='',
                     exclude1=F, npct='both', digits=3,long=T,
                     prmsd=TRUE, brmsd=T, longtable=T, middle.bold=T,
                     vnames = c('names'))
  IRdisplay::display_html(out)
}