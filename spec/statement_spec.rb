require './lib/statement.rb'
require 'date'

describe Statement do

  before(:each) do
    @statement = Statement.new([Date.today], [1000], [0], [1000])
  end

  it 'can print title' do
    expect(@statement.print_title).to eq("date || credit(£) || debit(£) || balance(£)")
  end

  it 'can print statement' do
    list = "date || credit(£) || debit(£) || balance(£)" + "\n" + "#{Date.today} || 1000.00 || 0.00 || 1000.00" + "\n"
    expect{@statement.print_statement}.to output(list).to_stdout
  end



  
end

