require './lib/bank.rb'

describe Bank do
  it 'has zero money at before transactions have taken place' do
    bank = Bank.new
    expect(bank.balance).to eq(0)
  end
end

