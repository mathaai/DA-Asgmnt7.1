View(mtcars)
# 1.Histogram for all variables in a dataset mtcars. Write a program to create histograms for all columns
library(ggplot2)
library(tidyr)
ggplot(gather(mtcars), aes(value)) + 
  geom_histogram(bins = 10) + 
  facet_wrap(~key, scales = 'free_x')+
  theme(panel.background = element_blank(),axis.line = element_line(colour = "black"))


# 2. Check the probability distribution of all variables in mtcars

for(i in 1:ncol(mtcars)) {

  p_mpg <- dnorm(sort(mtcars[,i]),mean(mtcars[,i]),sd(mtcars[,i]))
  
  plot(sort(mtcars[,i]),p_mpg, type = "l", xlab = colnames(mtcars)[i])
}



# 3. Write a program to create boxplot for all variables
boxplot(mtcars)

ggplot(gather(mtcars),aes(key,value)) + 
  geom_boxplot(width = 0.5)+
  facet_wrap(~key, scales = 'free_x')+
  theme(panel.background = element_blank(),axis.line = element_line(colour = "black"))


