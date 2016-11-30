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

    it 'adds an amount to the bank account' do
      added_amount = 10
      subject.add_amount(added_amount)
      expect{ subject.add_amount(added_amount) }.to change { subject.balance }.by( added_amount )
    end
  end

  describe '#deduct_amount' do
    it { is_expected.to respond_to(:deduct_amount).with(1).argument }

    it 'deducts an amount from the bank account' do
      added_amount = 40
      subject.add_amount(added_amount)
      deducted_amount = 10
      expect{ subject.deduct_amount(deducted_amount) }.to change { subject.balance }.by( -deducted_amount )
    end

    it 'raises an error if there is not enough balance in the account' do
      error = 'There is not enough balance in your account'
      amount = 10
      expect { subject.deduct_amount(amount) }.to raise_error(error)
    end
  end


end
