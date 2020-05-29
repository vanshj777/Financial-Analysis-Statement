#Financial Statement Analysis

#Scenario: You are a Data Scientist working for a consulting firm. One of your
#colleagues from the Auditing department has asked you to help them assess the
#financial statement of organisation X.
#You have been supplied with two vectors of data: monthly revenue and monthly
#expenses for the financial year in question. Your task is to calculate the following
#financial metrics:

#  - profit for each month
#- profit after tax for each month (the tax rate is 30%)
#- profit margin for each month - equals to profit a after tax divided by revenue
#- good months - where the profit after tax was greater than the mean for the year
#- bad months - where the profit after tax was less than the mean for the year
#- the best month - where the profit after tax was max for the year
#- the worst month - where the profit after tax was min for the year
# All results need to be presented as vectors.
#  Results for dollar values need to be calculated with $0.01 precision, but need to be
# presented in Units of $1,000 (i.e. 1k) with no decimal points.
#Results for the profit margin ratio need to be presented in units of % with no
#decimal points.

#Note: You colleague has warned you that it is okay for tax for any given month to be
#negative (in accounting terms, negative tax translates into a deferred tax asset)

---------------------------------------------------------------------------------------
  
  
  
 #Data
  revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
  expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
  
  #Solution
  
#first we need to calculate the profit for each month.
  
  profit <- revenue - expenses
profit

#now we need to calculate the profit after the tax(tax percent is 30%)

profit_after_tax <- profit - round(0.3 * profit,2)
profit_after_tax 

#calculating profit margin.

profit_margin <- round(profit_after_tax / revenue, 2) * 100
profit_margin

#calculating the good months

good_month <-  profit_after_tax > mean(profit_after_tax)
good_month

#calculating the bad months

bad_month <- !good_month
bad_month

#calculating the worst month
worst_month <- min(profit_after_tax) == profit_after_tax
worst_month

#calculating the best month

best_month <- max(profit_after_tax) == profit_after_tax
best_month

#Units of 1000

rev.1000 <- round(revenue/ 1000)

rev.1000

expense.1000 <- round(expenses/1000)
expense.1000

profit.1000 <- round(profit/1000)
profit_after_tax.1000 <- round(profit_after_tax/1000)

#final output

rev.1000
expense.1000
profit.1000
profit_after_tax.1000
profit_margin
good_month
bad_month
best_month
worst_month

--------------------------------------------------------------------------------------