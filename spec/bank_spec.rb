require './lib/bank.rb'
require 'date'

describe Bank do
  it 'has zero money before transactions have taken place' do
    bank = Bank.new
    expect(bank.balance).to eq(0)
  end

  it 'can deposit money' do
    bank = Bank.new
    bank.deposit(1000)
    expect(bank.balance).to eq(1000)
  end

  it 'can withdraw money' do
    bank = Bank.new
    bank.deposit(1000)
    bank.withdrawal(500)
    expect(bank.balance).to eq(500)
  end

  it 'can go into overdraft' do
    bank = Bank.new
    bank.withdrawal(500)
    expect(bank.balance).to eq(-500)
  end

  it 'can save the date of transactions' do
    bank = Bank.new
    bank.deposit(1000)
    expect(bank.date_array[0]).to eq(Date.today)
  end

end

