require_relative 'bank_account'

class BankStatement

  attr_reader :bank_statement

  def initialize
    @bank_statement = [['date       || credit ||  debit  || balance']]
  end

  def create_bank_statement
    date = (Time.new).strftime('%d/%m/%Y')
    credit = 50.to_s
    debit = 10.to_s
    balance = 40.to_s
    statement = date + ' ||   ' + credit + '   ||     ' + debit + '  ||   ' + balance
    @bank_statement.push([statement])
  end

  def print_bank_statement
    create_bank_statement
    @bank_statement.each do |statement|
      puts statement
    end
  end

end
