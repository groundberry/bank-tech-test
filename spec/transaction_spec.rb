require 'transaction'

describe Transaction do

  describe '#initialize' do
    it 'initialises a transaction with date, amount and balance' do
      date = Time.now
      amount = 1000
      balance = 0
      transaction = Transaction.new(date, amount, balance)
      expect(transaction.date).to eq(date)
      expect(transaction.amount).to eq(amount)
      expect(transaction.balance).to eq(balance)
    end
  end

end
