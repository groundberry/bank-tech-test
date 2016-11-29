require 'bank_account'

describe BankAccount do
  let(:balance) { double :balance }

  describe '#check_balance' do
    it 'displays the initial balance of a new account' do
      expect(subject.balance).to eq(0)
    end
  end

  describe '#add_amount' do
    it { is_expected.to respond_to(:add_amount).with(1).argument }

    it 'adds an amount of credit to the bank account' do
      subject.add_amount(10)
      expect(subject.credit).to eq(10)
    end
  end

  describe '#deduct_amount' do
    it { is_expected.to respond_to(:deduct_amount).with(1).argument }

    it 'deducts an amount from the bank account' do
      subject.deduct_amount(10)
      expect(subject.debit).to eq(10)
    end
  end
end
