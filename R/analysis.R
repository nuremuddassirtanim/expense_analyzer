# analysis.R — Monthly expense analysis by category

# - - Data - -
amount   <- c(8000, 450, 120, 300, 800, 1500, 600, 250, 4500, 200, 90, 1200)
category <- c("Rent", "Food", "Transport", "Food", "Internet", "Fun",
              "Books", "Transport", "Food", "Food", "Transport", "Fun")
budget   <- c(Books = 500, Food = 4000, Fun = 2000,
              Internet = 800, Rent = 8000, Transport = 500)

# TODO 1: Convert category to a factor. Print its levels and 
#         count how many transactions each category has.

category <- factor(category)
levels(category)
table(category)

# TODO 2: Total monthly spending, and the number of transactions.


# TODO 3: Total spending per category with tapply(). Save it as cat_total.


# TODO 4: Which category cost the most? Show its name and amount.


# TODO 5: What percentage of the total does each category make up?
#         Round to 1 decimal place.


# TODO 6: Compare cat_total with budget. Use ifelse() to label each
#         category "Over" or "OK". Save it as status.
#         Hint: budget[names(cat_total)] puts the budget in the same order.


# TODO 7: Show only the over-budget categories (logical indexing).


# TODO 8: Draw a bar chart of cat_total and save it to
#         output/category_totals.png. Add a title and axis labels
#         (main =, ylab =).