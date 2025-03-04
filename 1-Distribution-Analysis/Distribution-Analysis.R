library(ggplot2)

#mpg vs wt Scatter plot
g <- ggplot(data = carsDB, aes(x = wt,y = mpg))
g + geom_point(color = "Red")+
  labs(title="Fuel Efficiency by Weight", 
       x = "Weight - wt (1000 lbs)",
       y = "Fuel Efficiency (mpg)")+
  theme(plot.title = element_text(color = "Blue", size = 15, hjust = 0.5),
        axis.title.y = element_text(size = 15),
        axis.title.x = element_text (size = 15))+
  geom_smooth(col = "Black")

#boxplot for disp. vs cyl

a <- ggplot(data = carsDB,aes(x = factor(cyl), y = disp))
means <- tapply(carsDB$disp, carsDB$cyl, mean)    # Calculate mean value
sdv <- tapply(carsDB$disp, carsDB$cyl, sd)        # Calculate median value
iqr <- tapply(carsDB$disp, carsDB$cyl, IQR)       # Calculate IQR value

a + geom_boxplot(aes(fill = factor(cyl))) +
  labs(title="Boxplot For Disp. Vs Cyl", 
       x = "Number of cylinders - Cyl",
       y = "Displacement (cu.in.) - Disp") +
  theme(plot.title = element_text(color = "Blue", size = 15, hjust = 0.5),
        axis.title.y = element_text(size = 15),
        axis.title.x = element_text (size = 15))+
  
  # Calculate mean value in box plot
  stat_summary(fun = mean, geom = "point", shape = 21, size = 3, fill = "blue") +  
  
  # Write mean value in box plot 
  stat_summary(fun = mean, geom = "text", aes(label = round(..y.., 2)),                   
               vjust = -1, hjust = -1, color = "blue", size = 3.5) +

  # Calculate sd value in box plot  
  stat_summary(fun = sd, geom = "point", shape = 21, size = 3, fill = "red") +
  
  # Write sd value in boxplot 
  stat_summary(fun = sd, geom = "text", aes(label = round(..y.., 2)), 
               vjust = -1, hjust = -1, color = "red", size = 3.5) +
  
  # Calculate IQR value in box plot
  stat_summary(fun = IQR, geom = "point", shape = 21, size = 3, fill = "purple") +
  
  # Write IQR value in boxplot 
  stat_summary(fun = IQR, geom = "text", aes(label = round(..y.., 2)), 
               vjust = -1, hjust = -1, color = "purple", size = 3.5) +
  
  # Calculate median value in boxplot 
  stat_summary(fun = median, geom = "point", shape = 21, size = 3, fill = "black") +
  
  # Write median value in boxplot 
  stat_summary(fun = median, geom = "text", aes(label = round(..y.., 2)), 
               vjust = -1, hjust = -4, color = "black", size = 3.5) +
  
annotate("text", x = 1, y = 400, label = "Mean - Mean Value", color = "blue") +
annotate("text", x = 1, y = 410, label = "SD - Standard Deviation", color = "red") +
annotate("text", x = 1, y = 420, label = "IQR - IOnterquatile Range", color = "purple")


