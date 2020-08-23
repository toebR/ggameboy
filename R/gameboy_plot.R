#' A plotting function for a custom gameboy
#'
#' This function allows you to custamize your own gameboy.
#' @import ggplot2
#' @import extrafont
#' @import statebins
#' @param background Color of the plot background.
#' @param case Color of the gameboy case.
#' @param glassframe Color of the glassframe.
#' @param screen Color of the screen.
#' @param Abutton Color of the A button.
#' @param Bbutton Color of the B button.
#' @param start Color of the start button.
#' @param select Color of the select button.
#' @param cross Color of the navigation cross.
#' @param speaker Color of the speaker points.
#' @param screentext Text that is shown in the screen.
#' @param labelGB Color of the "GAMEBOY" Label.
#' @param Done_col Color of the string "Done in".
#' @param R_col Color of the "R" character.
#' @param Rbackground Color of the background of the "R" character.
#' @keywords gameboy customisation
#' @export
#' @examples
#' gameboy_plot()

gameboy_plot <- function(background = "#E0E0E0",
                        case = "#293133",
                        glassframe = "black",
                        screen = "lightgrey",
                        Abutton = "black",
                        Bbutton = "black",
                        start = "black",
                        select = "black",
                        cross = "black",
                        speaker = "black",
                        screentext = "Put your text here",
                        labelGB = "white",
                        Done_col = "white",
                        R_col = "black",
                        Rbackground = "white",
                        ...) {
  extrafont::loadfonts(quiet = TRUE)
  ggplot() +
    statebins:::geom_rrect(mapping = aes(xmin = 1, xmax = 3.1, ymin = 1, ymax = 4.5),
                           fill = case) + #case
    statebins:::geom_rrect(mapping = aes(xmin = 1.2, xmax = 2.9, ymin = 2.6, ymax = 4.3),
                           fill = glassframe) + #class
    geom_rect(aes(xmax = 2.6, ymax = 4, xmin = 1.5, ymin = 2.9),
              color = screen,
              fill = screen)+ #screen
    geom_point(aes(x= 2.7, y = 2.15),
               size = 13,
               color = Abutton) + # A
    geom_point(aes(x= 2.45, y = 1.95),
               size = 13,
               color = Bbutton) + # B
    geom_rect(mapping = aes(xmin = 1.65, xmax = 1.95, ymin = 1.5, ymax = 1.55),
              fill = start) + #start
    geom_rect(mapping = aes(xmin = 2.15, xmax = 2.45, ymin = 1.5, ymax = 1.55),
              fill = select) + #select
    geom_point(aes(x = 1.3, y = 3.65),
               size = 2,
               color = "red",
               alpha = .3)+
    geom_point(aes(x = 1.3, y = 3.65),
               color = "red")+ #power light
    geom_rect(mapping = aes(xmin=1.33, xmax = 1.52, ymin = 1.8, ymax = 2.3),
              fill = cross)+ #bar vertical
    geom_rect(mapping = aes(xmin=1.2, xmax = 1.66, ymin = 1.95, ymax = 2.15),
              fill = cross)+ #case horizontal
    statebins:::geom_rrect(mapping = aes(xmin=1, xmax = 1.5, ymin = 1, ymax = 4.5),
                           fill = "white",
                           alpha = .2)+ #case shading 1
    geom_point(aes(x = 3, y = 1.1),
               color = speaker)+
    geom_point(aes(x = 3, y = 1.2),
               color = speaker)+
    geom_point(aes(x = 3, y = 1.3),
               color = speaker)+
    geom_point(aes(x = 3, y = 1.4),
               color = speaker)+
    geom_point(aes(x = 2.9, y = 1.1),
               color = speaker)+
    geom_point(aes(x = 2.9, y = 1.2),
               color = speaker)+
    geom_point(aes(x = 2.9, y = 1.3),
               color = speaker)+
    geom_point(aes(x = 2.9, y = 1.4),
               color = speaker)+
    geom_point(aes(x = 2.8, y = 1.1),
               color = speaker)+
    geom_point(aes(x = 2.8, y = 1.2),
               color = speaker)+
    geom_point(aes(x = 2.8, y = 1.3),
               color = speaker)+
    geom_point(aes(x = 2.8, y = 1.4),
               color = speaker)+
    geom_point(aes(x = 2.7, y = 1.1),
               color = speaker)+
    geom_point(aes(x = 2.7, y = 1.2),
               color = speaker)+
    geom_point(aes(x = 2.7, y = 1.3),
               color = speaker)+
    geom_point(aes(x = 2.7, y = 1.4),
               color = speaker)+#points for the speaker bottom right
    annotate(geom = "text",
             label = screentext,
             family = "Consolas",
             size = 2.5,
             x = 2.04,
             y = 3.46)+
    annotate(geom = "text",
             label = "GAME BOY",
             fontface = "italic",
             size= 4.5,
             # family = "Times",
             x = 2.05,
             y = 2.75,
             color = labelGB)+
    annotate(geom = "text",
             label = "Done in",
             size = 2.5,
             # family = "Times",
             x = 2.0, y = 4.15,
             color = Done_col)+
    geom_point(aes(x = 2.165, y = 4.15),
               color = Rbackground,
               shape = 16,
               size = 5)+
    annotate(geom = "text",
             label = "R",
             size = 2.5,
             # family = "Times",
             x = 2.165,
             y = 4.15,
             color = R_col)+
    scale_x_continuous(limits = c(.5,3.5)) +
    scale_y_continuous(limits = c(1,4.5)) +
    coord_fixed()+
    theme_void() +
    theme(plot.background = element_rect(fill = background,
                                         color = background),
          plot.caption = element_text(hjust = .45,
                                      vjust = 5),
          text = element_text(family = "Consolas")
    ) -> gameboy
  return(gameboy)
}

