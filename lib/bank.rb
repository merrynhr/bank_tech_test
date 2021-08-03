require 'date'

class Bank

  attr_reader :balance, :date_array, :balance_array, :credit_array, :debit_array

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

end