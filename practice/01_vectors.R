# 01_vectors.R — Vector practice
# Practising R vectors with a week of daily expenses (in BDT).

# TODO 1: Create a numeric vector of 7 days of daily expenses.
# c() combines values into one vector. Numbers are written without quotes
# so R stores them as numeric, not character.

dailycost <- c(1100,1222,16000,1999,2333,4999,2030)
dailycost
class(dailycost)   # "numeric"
length(dailycost)  # 7

# TODO 2: Give each element a name (the day of the week).
# names(x) <- ... is a replacement function: it modifies x itself.
# Names let us look up values by label, e.g. dailycost["Monday"].

names(dailycost) <- c("Saturday","Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# TODO 3: Find the days with the highest and lowest spending.
# max() returns the value; which.max() returns the position (index),
# so dailycost[which.max(dailycost)] gives both the day and the amount.

max(dailycost)
which.max(dailycost)
names(which.max(dailycost))
names(which.min(dailycost))
dailycost[which.max(dailycost)]

# TODO 4: Which days were above the average? (logical indexing)
# dailycost > avg_cost returns a TRUE/FALSE vector, one value per day.
# Putting that inside [ ] keeps only the TRUE days: Monday and Thursday.

avg_cost <- mean(dailycost)
dailycost > avg_cost
dailycost[dailycost > avg_cost]
median(dailycost)

# Observation: the mean (about 4240) is more than twice the median (2030).
# One outlier, Monday's 16000, pulls the mean up, so only 2 of 7 days are
# "above average". The median is barely affected, so it better describes a
# typical day. With skewed data (income, prices, hospital stays), report the
# median, or both.

# TODO 5: What happens when different types are mixed in one vector?
# A vector can hold only one type. R coerces everything to the most general
# type, in the order logical -> numeric -> character. Any number can become
# text but not all text can become a number, so one character value turns the
# whole vector into character: c(1, "3", TRUE) becomes "1" "3" "TRUE".
# In real data, a single "N/A" in a numeric CSV column makes the whole column
# character, and mean() then fails.

class(c(1, "3", TRUE))

# TODO 6: Convert all expenses to USD (1 USD = 120 BDT) without a loop.
# Arithmetic in R is vectorized: dailycost / 120 divides all 7 values at once.
# round(x, 2) keeps 2 decimal places.

dollar<-dailycost / 120
round(dollar, 2)
