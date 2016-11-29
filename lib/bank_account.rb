class BankAccount

  attr_reader :credit, :debit, :balance

  def initialize
    @credit = 0
    @debit = 0
    @balance = 0
  end

  def add_amount(amount)
    @credit = amount
    @balance += amount
  end

  def check_balance
    @balance
  end


end
