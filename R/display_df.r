#' Displays a formatted table
#' @param df a data.frame
#' @param width the width of the columns in pixels
#' @examples 
#'\dontrun{
#' df <- data.frame(a=c(1,2,3),b=c(4,5,6))
#' display_df(df)
#' }
#' @export
display_df <- function(df,width=100)
{
    width <- paste0("width: ",width,"px")
    styled_df <- htmlTable::addHtmlTableStyle(df,col.rgroup = c("#E7E7E7","#FFFFFF"))
    IRdisplay::display_html(htmlTable::htmlTable(styled_df, align = "c",
        rnames = FALSE, padding.tspanner = "", ctable = TRUE, css.cell = width, 
        ))
}

