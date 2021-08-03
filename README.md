bank = Bank.new
bank.deposit(1000)
bank.deposit(2000)
bank.withdrawal(500)
puts bank.balance
date_array = bank.date_array
credit_array = bank.credit_array
debit_array = bank.debit_array
balance_array = bank.balance_array
statement = Statement.new(date_array, credit_array, debit_array, balance_array)

puts statement.print_statement