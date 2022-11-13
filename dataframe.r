#Task 3 : Dataframe
#creating dataframe
df <- data.frame(
  name <- c("ac","bc","mc"),
  roll <- c(1,2,3),
  pass <- c(FALSE, TRUE, TRUE)
)
df
print("Summary")
summary(df)

#access columns
df[1]
df[["roll"]]
df$pass