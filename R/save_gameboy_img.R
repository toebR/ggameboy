#' Saving function for the gameboy plot
#'
#' This function saves your gameboy in your directory in a good width/height ratio.
#' @param dpi Set export dpi.
#' @param plotvar Name of the variable that stores your ggplot2 gameboy.
#' @param name Filename of the export.
#' @keywords gameboy plot
#' @export
#' @examples
#' save_gameboy_png()

save_gameboy_png <- function(plotvar = test,
                             dpi = 300,
                             name = "test_export") {
  ggsave(plotvar,
         filename = paste(name, ".png", sep = ""),
         dpi = dpi,
         width = 12.9,
         height = 15,
         units = "cm")
}
