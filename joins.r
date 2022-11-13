install.packages('dplyr')
install.packages("tidyr")

# data frame 1
df1 = data.frame(CustomerId = c(1:6), Product = c("Oven","Television","Mobile","WashingMachine","Lightings","Ipad"))
df1 
 
# data frame 2
df2 = data.frame(CustomerId = c(2, 4, 6, 7, 8), State = c("California","Newyork","Santiago","Texas","Indiana")) 
df2 

#inner join
library(dplyr)
df= df1 %>% inner_join(df2,by="CustomerId")
df

#full join
library(dplyr)
df= df1 %>% full_join(df2,by="CustomerId")
df

# left join
library(dplyr)
df= df1 %>% left_join(df2,by="CustomerId")
df

# right join
library(dplyr)
df= df1 %>% right_join(df2,by="CustomerId")
df

# semi join
library(dplyr)
df= df1 %>% semi_join(df2,by="CustomerId")
df

# anti join
library(dplyr)
df = df1 %>% anti_join(df2,by="CustomerId")
df

#gather
library(tidyr)
# outer join using merge
oj = merge(x=df1, y=df2, by='CustomerId', all=TRUE)
oj
"gather"
oj <- oj %>% gather(Type, Value, -CustomerId)
oj
"spread"
oj <- oj %>% spread(Type, Value)
oj

#ggplot
library(ggplot2)
"simple"
ggplot(oj)
"aesthetic"
ggplot(oj, aes(x = CustomerId, y = Product, col = State))
"geometric"
ggplot(oj, aes(x = CustomerId, y = Product, col = State)) +geom_point()
"histogram"
ggplot(oj, aes(x = CustomerId)) +geom_histogram(binwidth = 5)
"statistics"
ggplot(oj, aes(x = CustomerId, y = Product)) +geom_point() +stat_smooth(method = lm, col = "red")