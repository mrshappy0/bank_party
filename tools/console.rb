require_relative '../config/environment'



# code here
cap_one = Bank.new("Capital One", "Denver")
first = Bank.new("First Bank", "Denver")
chase = Bank.new("Chase", "Denver")

john = Customer.new("John Smith", 35)
bob = Customer.new("Bob Jones", 73)
desirae = Customer.new("Desirae Sun", 21)

ba1 = Account.new("2934875328975", 45.34, cap_one, john)
ba2 = Account.new("234", 1010, first, john)

ba3 = Account.new("786", 72733, chase, bob)
ba4 = Account.new("5464", 843843.99, chase, bob)

ba5 = Account.new("25423", 4.56, first, desirae)
ba6 = Account.new("76876", 833, cap_one, desirae)
ba7 = Account.new("2456546", 5.45, chase, desirae)


bob.accounts

cap_one.accounts
cap_one.customers

binding.pry
0
