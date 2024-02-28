#' Display ANOVA
#' @param s a model returned by rms
#' @param width the width of the table in pixels
#' @export
display_rms_anova <- function(aov,width=150)
{
  w <- paste0("width: ",width,"px")
  a <- anova(aov)
  rn <- rownames(a)
  a <- as.data.frame(as.matrix(a))
  a[,"P"] <- scales::pvalue(a[,"P"],accuracy = .0001)
  a[,1] <- round(a[,1],4)
  a <- as.data.frame(a)
  IRdisplay::display_html(htmlTable::htmlTable(a, align = "c",
                                               rnames = rn,
                                               padding.tspanner = "", ctable = TRUE,
                                               css.cell = w,
  ))
}
