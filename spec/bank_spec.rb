require './lib/bank.rb'
require 'date'

describe Bank do

  before(:each) do 
    @bank = Bank.new
  end

  it 'has zero money before transactions have taken place' do
    expect(@bank.balance).to eq(0)
  end

  it 'can deposit money' do
    @bank.deposit(1000)
    expect(@bank.balance).to eq(1000)
  end

  it 'can withdraw money' do
    @bank.deposit(1000)
    @bank.withdrawal(500)
    expect(@bank.balance).to eq(500)
  end

  it 'can go into overdraft' do
    @bank.withdrawal(500)
    expect(@bank.balance).to eq(-500)
  end

  it 'can save the date of transactions' do
    @bank.deposit(1000)
    expect(@bank.date_array[0]).to eq(Date.today)
  end

end

