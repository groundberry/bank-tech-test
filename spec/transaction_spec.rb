require 'transaction'

describe Transaction do

  describe '#initialize' do
    it 'initialises a transaction with date and amount' do
      date = Time.now
      amount = 1000
      transaction = Transaction.new(date, amount)
      expect(transaction.date).to eq(date)
      expect(transaction.amount).to eq(amount)
    end
  end

end
