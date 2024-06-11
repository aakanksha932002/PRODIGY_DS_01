#Create a bar chart or histogram to visualize the distribution of
#a categorical or continuous variable.
#The "iris" dataset is our choice for the task.

library(datasets)
?iris
head(iris)

# Install ggplot2 if not already installed
#install.packages("ggplot2")

# Load the ggplot2 package
library(ggplot2)

# Load the Iris dataset
data(iris)

# Create a histogram for the continuous variable 'Sepal.Length'.
ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(binwidth = 0.5, fill = "violet", color = "black") +
  labs(title = "Distribution of Sepal Lengths in the Iris Dataset",
       x = "Sepal Length",
       y = "Frequency") +
  theme_minimal()


# Create a bar chart for the categorical variable 'Species'.
ggplot(iris, aes(x = Species)) +
  geom_bar(fill = "orange", color = "black") +
  labs(title = "Distribution of Iris Species",
       x = "Species",
       y = "Count") +
  theme_minimal()

