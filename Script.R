#Create a plot with iris data, Petal Width on the y-axis and Petal Length on the x-axis.

#Shapes for each Specie
shapes <- c("setosa" = 1, "versicolor" = 2, "virginica" = 3)

#colors
colors <- c("setosa" = "black", "versicolor" = "red", "virginica" = "green")

#create the plot again

irisplot<-plot(iris$Petal.Length, iris$Petal.Width, 
               col = colors[iris$Species], 
               pch = shapes[iris$Species], 
               xlab = "Petal Length (cm)", 
               ylab = "Petal Width (cm)", 
               main = "Petal width vs length",
               sub = "A refined scatter plot using base R graphics",
               cex = 0.6,
               cex.main = 0.9,
               cex.sub = 1.2)


#Extra elements:

legend("topleft", legend=c("setosa", "versicolor", "virginica"), col=c("black","red", "green", pch=12:14))

text(5,0.5, 'R= 0.96', col='black')

abline(a = 0, b = 1)

#Save it as pdf. (Not sure how to add the extra elements)
pdf(file = "practice.pdf", paper = "A4")
plot(iris$Petal.Length, iris$Petal.Width, 
     col = colors[iris$Species], 
     pch = shapes[iris$Species], 
     xlab = "Petal Length (cm)", 
     ylab = "Petal Width (cm)", 
     main = "Petal width vs length",
     sub = "A refined scatter plot using base R graphics",
     cex = 0.6,
     cex.main = 0.9,
     cex.sub = 1.2)
dev.off()
