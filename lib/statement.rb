require_relative 'bank'

class Statement 


   def initialize (date_array, credit_array, debit_array, balance_array)
      @date_array = date_array
      @credit_array = credit_array
      @debit_array = debit_array
      @balance_array = balance_array
      @counter = -1
      
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
