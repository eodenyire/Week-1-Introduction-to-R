'''{r}
# The shipping is set at a rate of $4 for the 1st item and $2 for each subsequent item
# Note that each item has an import of 10% tax.
#A discount(10) is applied for orders above $500
# Creating a list with items ('item 1', 'item 2', 'item 3', 'item 4', 'item 5', 'item 6', 'item 7')
# Setting a price list/vector with (120, 32, 99, 49, 99, 75, 30)

items <- list('item 1', 'item 2', 'item 3', 'item 4', 'item 5', 'item 6', 'item 7')

price <- c(120, 32, 99, 49, 99, 75, 30)

# Shipping cost set at

shipping_cost <- function(){
shipping_cost <- (4 + (2 *(length(items)-1)))
return(shipping_cost)
}

# Cost of items( cost of item + tax) will be

item_cost <- function() {
item_cost <- (sum(price) * 1.10)
return(item_cost)
}

# The total cost will be shipping + item cost
total_cost <- (item_cost() + shipping_cost())
if (total_cost > 500) {
total_cost <- total_cost -10
}

total_cost

'''