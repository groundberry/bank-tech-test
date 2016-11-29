class Transaction

  attr_reader :date, :amount

  def initialize(date, amount)
    @date = (Time.now).strftime('%d/%m/%Y')
    @amount = amount
  end
  
end
