require 'bank_statement'

describe BankStatement do

  describe '#create_bank_statement' do
    it 'creates a statment showing date of the transaction, credit, debit and balance' do
      expect(subject.bank_statement).to include(['date       || credit ||  debit  || balance'])
    end

    it 'creates a statement showing the last transactions' do
      date = '29/11/2016'
      credit = '50'
      debit = '10'
      balance = '40'
      statement = date + ' ||   ' + credit + '   ||     ' + debit + '  ||   ' + balance

      expect(subject.create_bank_statement).to include([statement])
    end
  end

  describe '#print_bank_statement' do
    it 'prints a full bank statement' do
      date = '29/11/2016'
      credit = '50'
      debit = '10'
      balance = '40'
      statement = date + ' ||   ' + credit + '   ||     ' + debit + '  ||   ' + balance

      expect(subject.print_bank_statement).to include([statement])
    end
  end
end
