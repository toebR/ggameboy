# ggameboy
This package lets you plot & save customly colored gameboys.

## 1. Installation
To use this package, you'll need to have the following packages installed:
````
install.packages(c("ggplot2", "statebins", "extrafont")) #run once
extrafont::register_fonts() #run once
extrafont::loadfonts(quiet = TRUE) #run once in every new R session
````
The package can be installed via:
````
devtools::install_github("toebR/ggameboy")
library(gameboy)
````

## 2. Description
The package use is fairly easy. <br/>
The following function plots a default monochrome gameboy:
````
gameboy_plot() -> test
test
````
The plot can be saved in your working directory with an optimised width:height ratio with a simple export function:
````
save_gameboy_png(plotvar = test, dpi = 300, name = "test_export") #default parameters which can be changed
````

![testexport](https://user-images.githubusercontent.com/65813696/90975205-8c1c1e80-e532-11ea-8b28-07533a93707e.png)

### 2.1 Parameters
The gameboy_plot() function allows you to change EVERY color of almost all elements of the gameboy as well as the screen text. <br/>
The following infographic shows which parameters change what element of the plot:

![info_gb](https://user-images.githubusercontent.com/65813696/90975976-575f9580-e539-11ea-92a0-6d49f441e780.png)

### 2.2 Example
Once the parameters are clear, it's easy to change some element and make your custom gameboy:
````
gameboy_plot(background = "white", case = "green", screentext = "Custom Gameboy") 
````
![testexport](https://user-images.githubusercontent.com/65813696/90976046-1f0c8700-e53a-11ea-9e09-6c42107f8570.png)

## 3. Compatibility with ggplot2 & extensions

### 3.1 ggplot2
Since the gameboy is basically a ggplot2 plot, you can add a title etc. to your pleasing.
````
P <- gameboy_plot(background = "grey", case = "darkblue", screentext = "I played Pokémon on this one")

P + ggtitle("This is a title") +
  labs(caption = "This is a caption")
````

![blue_test](https://user-images.githubusercontent.com/65813696/90976177-241e0600-e53b-11ea-9a48-c81edea0c7ff.png)

### 3.2 Patchwork
Lets say you want to arrange some of your gameboys into one plot.I did this easily with patchwork:<br/>
The gameboys have a bit of a different width:height ration but you get the idea.

````
library(patchwork)

(gameboy_monochrome + gameboy_turquoise)/(gameboy_green + gameboy_red) / (gameboy_yellow + gameboy_purple) -> patch

patch + plot_annotation(title = "\nWHAT WE CAN DO WITH {GGPLOT2}\n", caption = "Code & Design by Tobias Stalder (@toeb18)",
  theme = theme(
  plot.background = element_rect(fill = "#293133", color = "#293133"),
  panel.background = element_rect(fill = "#E0E0E0", color = "#E0E0E0"),
  plot.title = element_text(size = 30, color = "white", family = "Consolas", hjust = .5),
  plot.caption = element_text(size = 10, color = "white", family = "Consolas", hjust = .5)
)) -> gameboy_poster
````

![poster_gameboy](https://user-images.githubusercontent.com/65813696/90976254-a6a6c580-e53b-11ea-969f-8b5a9eb4dfc8.jpg)

## 4. Licence
