
#Hist and freq plot
ggplot(mpg, aes(hwy)) + geom_histogram()
ggplot(mpg, aes(hwy)) + geom_freqpoly()

#Freqplot with bin size
ggplot(mpg, aes(hwy)) + geom_freqpoly(binwidth = 2.5)
ggplot(mpg, aes(hwy)) + geom_freqpoly(binwidth = 1)

#Ex1


#Compare distri?ution
ggplot(mpg, aes(displ, colour = drv)) +
  geom_freqpoly(binwidth = 0.5)
ggplot(mpg, aes(displ, fill = drv)) +
  geom_histogram(binwidth = 0.5) +
  facet_wrap(~drv, ncol = 1)

#Bar chart
ggplot(mpg, aes(manufacturer)) +geom_bar()

ggplot(mpg, aes(manu?acturer)) +geom_bar()+
  theme(axis.text.x = element_text(angle = -30, vjust = 1, hjust = 0))

ggplot(mpg, aes(manufacturer)) +geom_bar()+
  theme(axis.text.x = element_text(angle = -30, vjust = 1, hjust = 1))

ggplot(mpg, aes(manufacturer)) +geom_bar()+
 ?theme(axis.text.x = element_text(angle = -30, vjust = 0.5, hjust = 0))

ggplot(mpg, aes(manufacturer)) +geom_bar()+
  theme(axis.text.x = element_text(angle = -30, vjust = 0, hjust = 0))

#Time Series, line and path plot
econ<- economics
ggplot(economics, ?es(date, unemploy / pop)) +geom_line()

ggplot(economics, aes(date, uempmed)) +geom_line()

#Two variables vs time
ggplot(economics, aes(unemploy / pop, uempmed)) +geom_path()
ggplot(economics, aes(unemploy / pop, uempmed)) +geom_path() +geom_point()

#Wit? colour
year <- function(x) as.POSIXlt(x)$year + 1900
ggplot(economics, aes(unemploy / pop, uempmed)) +
  geom_path(colour = "grey50") +
  geom_point(aes(colour = year(date)))

#Default label
ggplot(mpg, aes(cty, hwy)) +geom_point(alpha = 1 / 3)
#Add label?
ggplot(mpg, aes(cty, hwy)) +geom_point(alpha = 1 / 3) + xlab("city driving (mpg)") +
  ylab("highway driving (mpg)")
# Remove the axis labels with NULL
ggplot(mpg, aes(cty, hwy)) + geom_point(alpha = 1 / 3) +xlab(NULL) +ylab(NULL)

#Normal jittered plot
g?plot(mpg, aes(drv, hwy)) +geom_jitter(width = 0.25)
#y limited to 20-30, some values missed
ggplot(mpg, aes(drv, hwy)) +geom_jitter(width = 0.25) +xlim("f", "r") +ylim(20, 30)
# For continuous scales, use NA to set only one limit
ggplot(mpg, aes(drv, hwy))?+geom_jitter(width = 0.25, na.rm = TRUE) +ylim(NA, 30)


#Save plots
p <- ggplot(mpg, aes(displ, hwy, colour = factor(cyl))) +
  geom_point()
print(p)
# Save png to disk
ggsave("plot.png", width = 5, height = 5)
#Save a cached copy of it to disk, This save? a complete
#copy of the plot object
saveRDS(p, "plot.rds")
#Load complete object
q <- readRDS("plot.rds")



#Put it all together

df <- data.frame(x = c(3, 1, 5),y = c(2, 4, 6),label = c("a","b","c"))
p <- ggplot(df, aes(x, y, label = label)) +
  labs(x ? NULL, y = NULL) + # Hide axis label
  theme(plot.title = element_text(size = 12)) # Shrink plot title
p + geom_point() + ggtitle("point")
p + geom_text() + ggtitle("text")
p + geom_bar(stat = "identity") + ggtitle("bar")
p + geom_tile() + ggtitle("raster"?

#Diamond 
#Displaying distributions
ggplot(diamonds, aes(depth)) +geom_histogram()
#Change bin size
ggplot(diamonds, aes(depth)) +
  geom_histogram(binwidth = 0.1) +
  xlim(55, 70)

#Compare distribution
ggplot(diamonds, aes(depth)) +
  geom_histogram(bi?width = 0.1) +
  xlim(55, 70)+facet_wrap(~cut)

#Compare distribution using colour
ggplot(diamonds, aes(depth)) +
  geom_freqpoly(aes(colour = cut), binwidth = 0.1, na.rm = TRUE) +
  xlim(58, 68) +theme(legend.position = "none")

ggplot(diamonds, aes(depth?) +
  geom_histogram(aes(fill = cut), binwidth = 0.1, position = "fill",
                 na.rm = TRUE) +
  xlim(58, 68) +
  theme(legend.position = "none")

#Depth of all diamonds
ggplot(diamonds, aes(depth)) +geom_density(na.rm = TRUE) +xlim(58, 68) +the?e(legend.position = "none")
#Depth of different cuts
ggplot(diamonds, aes(depth, fill = cut, colour = cut)) +
  geom_density(alpha = 0.2, na.rm = TRUE) +
  xlim(58, 68) +theme(legend.position = "none")

#geom boxplot(): the box-and-whisker plot shows five ?ummary statistics along with individual outliers".
ggplot(diamonds, aes(clarity, depth)) +geom_boxplot()

#cut_width() defines how the x variable is broken up into bins
ggplot(diamonds, aes(carat, depth)) +
  geom_boxplot(aes(group = cut_width(carat, 0.1))? + xlim(NA, 2.05)

#geom violin(): the violin plot is a compact version of the density plot
#Categorical x 
ggplot(diamonds, aes(clarity, depth)) +geom_violin()
#Continuous x
ggplot(diamonds, aes(carat, depth)) +geom_violin(aes(group = cut_width(carat, 0.1?)) +xlim(NA, 2.05)

#Bubble plot(TBC)
library(plyr)
count(mtcars, 'gear')



#Data visualization
#growth of the Gross Domestic Product (GDP) over the years for the top 10 countries
library(reshape)
library(ggplot2)
GDP <-read.csv("Dataset/Total_GDP_2015_To?_10.csv")
names(GDP) <-c("Country", "2010","2011","2012","2013","2014","2015")
GDP
GDP_Long_Format <-melt(GDP, id="Country")
names(GDP_Long_Format) <-c("Country", "Year","GDP_USD_Trillion")
GDP_Long_Format
ggplot(GDP_Long_Format, aes(x=Year, y=GDP_USD_Tril?ion, group=Country)) +
  geom_line(aes(colour=Country)) +
  geom_point(aes(colour=Country),size =5) +
  theme(legend.title=element_text(family="Times",size=20),
        legend.text=element_text(family="Times",face ="italic",size=15),
        plot.title=ele?ent_text(family="Times", face="bold", size=20),
        axis.title.x=element_text(family="Times", face="bold", size=12),
        axis.title.y=element_text(family="Times", face="bold", size=12)) +
  xlab("Year") +
  ylab("GDP (in trillion USD)") +
  ggtitle?"Gross Domestic Product - Top 10 Countries")

# Agriculture
Agri_GDP <-read.csv("Dataset/Agriculture - Top 10 Country.csv")
Agri_GDP_Long_Format <-melt(Agri_GDP, id ="Country")
names(Agri_GDP_Long_Format) <-c("Country", "Year", "Agri_Perc")
Agri_GDP_Long_F?rmat$Year <-substr(Agri_GDP_Long_Format$Year,
                                   2,length(Agri_GDP_Long_Format$Year))
ggplot(Agri_GDP_Long_Format, aes(x=Year, y=Agri_Perc, group=Country)) +
  geom_line(aes(colour=Country)) +
  geom_point(aes(colour=Country?,size =5) +
  theme(legend.title=element_text(family="Times",size=20),
        legend.text=element_text(family="Times",face ="italic",size=15),
        plot.title=element_text(family="Times", face="bold", size=20),
        axis.title.x=element_text(family=?Times", face="bold", size=12),
        axis.title.y=element_text(family="Times", face="bold", size=12)) +
  xlab("Year") +
  ylab("Agriculture % Contribution to GDP") +
  ggtitle("Agriculture % Contribution to GDP - Top 10 Countries")

#Basic example of st?tistics
A <- c(1, 2, 3, 4, 5, 5, 5, 6, 7, 8)
#Mean: the average of the data
mean(A)
#Mode : value in data that has the highest frequency
y <- table(A)
y
names(y)[which(y==max(y))]
#Median: the middle or midpoint of the data and is also the 50percentile of ?he data
median(A)
#Interquartile range: the measure of the difference between the 75 percentile and the 25 percentile
IQR(A)
#sample variance
var(A)
#population variance
N <- length(A);
var(A)*(N-1)/N

#Example 1
#library(SDSFoundations)
bike<-read.csv("Bi?eData.csv")
#Q1a  What is the age of the 7th rider in the dataset?
bike$age[7]
#Q1b How many of the first 10 riders in the dataset ride daily?
bike[1:10,]
sum(bike$cyc_freq[c(1:10)]=="Daily")
bike$cyc_freq[c(1:10)]=="Daily"
#Q1c What is the speed of the fi?st female who cycles less than one time per month (in miles/hour)?
bike[bike$gender=="F",c("gender","speed")][1,]

# Find the number of students in the dataset
bike$student
table(bike$student)

# Pull out student data into a new dataframe
student <-bike[bi?e$student==1,]

# Find how often the students ride, using the new dataframe
table(student$cyc_freq)

# Create a vector for the distance variable
distance <-student$distance

# Find average distance ridden
mean(distance)

#Another exercise analyse male ride?
#In this example, assign the new name for "BikeData" as "bike" 
bike <- BikeData
#In this example, which variable is being used to identify the cases that will be included in a new dataframe called "males?"
males <- bike [bike$gender == 'M',]
#In this exa?ple, a vector called "male_times" will include a string of values from which dataframe?
male_times <- males$time
#Assuming we have run the lines of code from the previous questions, if we want to find the mean ride time for the males, what should we place ?n the parentheses?
mean(male_times)

#1. Make a table to show how many daily riders are in the original dataset.
table(bike$cyc_freq)
#2. Create a new datafile that includes only the daily riders.
daily<-bike[bike$cyc_freq=="Daily",]
#3. Make a table to sh?w the number of male and female daily riders
# How many daily riders are in the dataset?
# How many of the daily riders are male?
table(daily$gender)
#4. Make a vector of the ages of these daily riders?
agesday<-daily$age
agesday
#5. Find the mean age for ?en and for women daily riders
#What is the average age of daily riders? (Round to 1 decimal place.)
mean(agesday)
#What is the average age of the male daily riders? (Round to 1 decimal place.)
agemale<-daily[daily$gender=="M",c("age")]
mean(agemale)
#What ?s the average age of the female daily riders? (Round to 1 decimal place)
agefemale<-daily[daily$gender=="F",c("age")]
mean(agefemale)
# How would you create a datafile that only includes male daily riders that are age 30 or older?   
#thirty <- bike[bike$a?e >= 30 &,]
daily30_male<- daily[daily$gender=="M" & daily$age>=30 ,]
nrow(daily30_male)


#Example 2: Univariate Descriptive ?tatistics
library(ggplot2)
animaldata <- AnimalData
#How many variables are in this dataset?
ncol(animaldata)
#How many of the fi?st 10 animals in the dataset were adopted?
#animaldata[1:10,c("Outcome.Type")]
table(animaldata[1:10,]$Outcome.Type)
#class(animaldata$Days.Shelter)

#Conduct analysis
#Find the number of animals that were adopted
table(animaldata$Outcome.Type)

#Pull out ?nly adopted animals
adopted <- animaldata[animaldata$Outcome.Type=="Adoption",]
animaldata$Outcome.Type[c(1:10)]=="Adoption"
#Pull out just the days in shelter for the adopted animals
daystoadopt <- adopted$Days.Shelter

#Visualize and describe this variab?e
hist(daystoadopt)
#or use adopted dataframe directly by ggplot
#How would you describe the shape of the distribution of daystoadopt?
#(postive/negative/symmetrical)
#Which measures of center and spread should you report for this data?
#(mean and sd or me?ian and IQR)
ggplot(adopted, aes(Days.Shelter)) + geom_histogram(bins=10)

fivenum(daystoadopt)
#summary(daystoadopt)
mean(daystoadopt)
median(daystoadopt)
sd(daystoadopt)

#The following line of R code will produce a row number:
max(daystoadopt)
which(ani?aldata$Days.Shelter==max(daystoadopt))
#Longest stay?animal in shelter
animaldata[425,]
#Suppose we have run the following code to subset the dataset for only male animals. What is the cause of the error below? (Examine the data set in R for help.)
animald?ta<-AnimalData 
#males<-animaldata[animaldata$Sex == ?Male'] 
#Ans: Missing comma to select rows
#males<-animaldata[animaldata$Sex == 'Male',] 
#What was the z-score for this particular animal? Round to the nearest TWO decimal places.r
(211-mean(daystoadop?))/sd(daystoadopt)
