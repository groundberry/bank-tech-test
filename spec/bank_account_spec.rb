require 'bank_account'

describe BankAccount do
  let(:balance) { double :balance }

  describe '#add_amount' do
    it { is_expected.to respond_to(:add_amount).with(1).argument }

    it 'adds an amount of credit to the bank account' do
      subject.add_amount(10)
      expect(subject.credit).to eq(10)
    end
  end
end
