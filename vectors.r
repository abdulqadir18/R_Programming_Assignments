#Task 1 : Vectors
#creating vector
av <- c(1,2,3,5,4);
bv <- c('a','b','c','d','e')
cv <- c(TRUE,FALSE,TRUE,FALSE,FALSE);
av
bv
cv

#typeof
class(cv)

#looping in vector
for(i in av)
{
  if(i>2) print(i)
}

#function
my_function <- function(v)
{
  for(i in v)
  {
    if(i>2) print(i)
  }
}
print("for av: ")
my_function(av)
print("for new vector")
my_function(c(-1,12,4,1,7,0))

#sorting
sort(av)