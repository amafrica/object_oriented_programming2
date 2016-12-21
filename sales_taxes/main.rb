require_relative "item"
require_relative "receipt"


receipt = Receipt.new


iphone = Item.new("iPhone", 499.99, false, true, receipt)
harry_potter = Item.new("Harry Potter", 10.99, true, false, receipt)
mars_bar = Item.new("Mars", 3.99, true, true, receipt)
chanel = Item.new("Chanel Eau Fraîche", 199.99, false, true, receipt)
advil = Item.new("Advil", 8.99, true, false, receipt)


receipt.report
