require_relative '../config/environment'



# code here
cap_one = Bank.new("Capital One", "Denver")
first = Bank.new("First Bank", "Denver")
chase = Bank.new("Chase", "Denver")

john = Customer.new("John Smith", 35)
bob = Customer.new("Bob Jones", 73)
desirae = Customer.new("Desirae Sun", 21)

ba1 = BankAccount.new("2934875328975", 45.34, cap_one, john)



binding.pry
0