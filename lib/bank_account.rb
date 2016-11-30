require_relative 'transaction'

class BankAccount

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def add_amount(amount)
    transaction = Transaction.new(Time.now, amount)
    @transactions.push(transaction)
    @balance += amount
  end

  def deduct_amount(amount)
    raise 'There is not enough balance in your account' if amount > balance
    transaction = Transaction.new(Time.now, -amount)
    @transactions.push(transaction)
    @balance -= amount
  end

  def print_last_transactions(number_of_transactions)
    selected_transactions = @transactions[-number_of_transactions..-1]
    puts "#{'date'.center(20)} || #{'credit'.center(10)} || #{'debit'.center(10)} ||  #{'balance'.center(10)}"
    selected_transactions.each do |transaction|
      date = transaction.date.strftime('%d/%m/%Y')
      credit = transaction.amount if transaction.amount > 0
      debit = -transaction.amount if transaction.amount < 0
      puts "#{date.center(20)} || #{credit.to_s.center(10)} || #{debit.to_s.center(10)} ||  #{@balance.to_s.center(10)}"
    end
  end

end
