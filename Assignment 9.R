library(ggplot2)
library(lattice)

data(mtcars)

cars <- mtcars
mpg <- cars$mpg
weight <- cars$wt
#Create a Scatter Plot

scatterplot<- plot(cars$wt, cars$mpg,
     main = "BaseR: Miles Per Gallon vs Weight",
     xlab = "Weight",
     ylab = "Miles Per Gallon")

scatterplot

histogram <- hist(cars$cyl,
                  main = "BaseR: Distribution of Cylinders",
                  xlab = "Cylinders")



#Create a plot using lattice

latticeplot <- xyplot(mpg ~ wt | factor(cyl),
       data = cars,
       main = "Lattice: Miles Per Gallon vs Weight")
latticeplot


#Box and whisker plot using lattice

BoxWhiskersplt <- bwplot(wt ~ factor(cyl),
       data = cars,
       main = "Lattice: Weight by Cylinders")

BoxWhiskersplt


Scatterggplot <- ggplot(cars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: Miles Per Gallon by Weight trend by Cylinders")

Scatterggplot


ggfacetedhistogram <- ggplot(cars, aes(wt)) +
  geom_histogram(binwidth = 1) +
  facet_wrap(~ cyl) +
  labs(title = "ggplot2: weight distribution by cylinder")

ggfacetedhistogram
