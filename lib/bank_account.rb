class BankAccount

  attr_reader :credit, :debit, :balance
  MIN_BALANCE  = 30

  def initialize
    @credit = 0
    @debit = 0
    @balance = 0
  end

  def add_amount(amount)
    @credit = amount
    @balance += amount
  end

  def deduct_amount(amount)
    raise 'There is not enough balance in your account' if balance - amount < MIN_BALANCE
    @debit = amount
    @balance -= amount
  end

  def check_balance
    @balance
  end


end
