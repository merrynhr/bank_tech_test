require 'date'

class Bank

  def initialize
    @balance = 0
    @date_array = []
    @balance_array = []
    @credit_array = []
    @debit_array = []
    @counter = -1
  end

  def deposit(money)
    @credit_array.push(money)
    @debit_array.push(0)
    @balance_array.push(@balance += money)
    @date_array.push(Date.today)
  end

  def withdrawal(money)
    @debit_array.push(money)
    @credit_array.push(0)
    @balance_array.push(@balance -= money)
    @date_array.push(Date.today)
  end

  def print_statement 
    puts "date || credit || debit || balance" 
    while @counter > -1 - @balance_array.length
      puts "#{@date_array[@counter]} || #{@credit_array[@counter]} || #{@debit_array[@counter]} || #{@balance_array[@counter]}"
      #puts "#{Date.today} || #{sprintf "%.2f", @balance} "
      @counter -=1
    end
  end
  
end