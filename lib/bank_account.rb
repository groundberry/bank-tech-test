require_relative 'transaction'

class BankAccount

  attr_reader :balance, :transactions

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def add_amount(amount)
    @balance += amount
    transaction = Transaction.new(Time.now, amount, balance)
    @transactions.push(transaction)
  end

  def deduct_amount(amount)
    raise 'There is not enough balance in your account' if amount > balance
    @balance -= amount
    transaction = Transaction.new(Time.now, -amount, balance)
    @transactions.push(transaction)
  end

  def print_last_transactions(number_of_transactions)
    selected_transactions = @transactions.reverse[0..2]
    puts "#{'date'.center(20)} || #{'credit'.center(10)} || #{'debit'.center(10)} ||  #{'balance'.center(10)}"
    selected_transactions.each do |transaction|
      date = transaction.date.strftime('%d/%m/%Y')
      credit = transaction.amount if transaction.amount > 0
      debit = -transaction.amount if transaction.amount < 0
      trans_balance = transaction.balance
      puts "#{date.center(20)} || #{credit.to_s.center(10)} || #{debit.to_s.center(10)} ||  #{trans_balance.to_s.center(10)}"
    end
  end

end
