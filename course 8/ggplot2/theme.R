library("ggplot2")
library("ggthemes")

p <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  ggtitle("Cars")

p2 <- ggplot(mtcars, aes(x = wt, y = mpg, colour = factor(gear))) +
  geom_point() +
  ggtitle("Cars")

p3 <- p2 + facet_wrap(~ am)


p + geom_rangeframe() +
  theme_tufte() + 
  scale_x_continuous(breaks = extended_range_breaks()(mtcars$wt)) +
  scale_y_continuous(breaks = extended_range_breaks()(mtcars$mpg))


p2 + theme_economist() + scale_colour_economist() 
p2 + theme_solarized() +
  scale_colour_solarized("blue")

p2 + theme_solarized(light = FALSE) +
  scale_colour_solarized("red")


p2 + theme_stata() + scale_colour_stata()
p2 + theme_excel() + scale_colour_excel()
p2 + theme_igray()


p2 + geom_smooth(method = "lm", se = F) +
  scale_color_fivethirtyeight() +
  theme_fivethirtyeight()


p2 + theme_igray() + scale_colour_tableau()


dtemp <- data.frame(months = factor(rep(substr(month.name,1,3), 4), levels = substr(month.name,1,3)),
                    city = rep(c("Tokyo", "New York", "Berlin", "London"), each = 12),
                    temp = c(7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6,
                             -0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5,
                             -0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0,
                             3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8))
ggplot(dtemp, aes(x = months, y = temp, group = city, color = city)) +
  geom_line(size=1.3) +
  geom_point(size = 1.1) + 
  ggtitle("Monthly Average Temperature") +
  theme_hc() +
  scale_colour_hc()
ggsave(file="mygraph.pdf")



ggplot(dtemp, aes(x = months, y = temp, group = city, color = city)) +
  geom_line(size=1.3) + 
  geom_point(size = 1.1) + 
  ggtitle("Monthly Average Temperature") +
  theme_economist() + scale_colour_economist() 
  
 theme_wsj() + scale_colour_wsj("colors6", "")
  
  
  theme_hc(bgcolor = "darkunica") +
  scale_fill_hc("darkunica")
