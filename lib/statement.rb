
class Statement 

  def initialize (date_array, credit_array, debit_array, balance_array)
    @date_array = date_array
    @credit_array = credit_array
    @debit_array = debit_array
    @balance_array = balance_array
  end

  def money_format
    make_demcimals
  end

  def print_title
    "date || credit(£) || debit(£) || balance(£)" 
  end

  def print_statement 
    puts print_title
    money_format
    i = -1
    while i > -1 - @balance_array.length
      puts "#{@date_array[i]} || #{@credit_array[i]} || #{@debit_array[i]} || #{@balance_array[i]}"
      i -=1
    end
  end
  
  private 

  def make_demcimals
    @balance_array.map! { |b| sprintf "%.2f", b }
    @credit_array.map! { |c| sprintf "%.2f", c }
    @debit_array.map! { |d| sprintf "%.2f", d }
  end

end

