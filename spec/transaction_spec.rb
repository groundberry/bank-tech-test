require 'transaction'

describe Transaction do

  describe '#initialize' do
    it 'initialises a transaction with date and amount' do
      transaction = Transaction.new('29/11/2016', 1000)
      expect(transaction.date).to eq('29/11/2016')
      expect(transaction.amount).to eq(1000)
    end
  end

end
