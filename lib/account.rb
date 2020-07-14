class Account

  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = []
  end

  def deposit(credit_amount)
    @balance += credit_amount
    @statement << "01/01/20" # time.date
    @statement << credit_amount
    @statement << ""
    @statement << @balance
    
  end

  def withdraw(debit_amount)
    @balance -= debit_amount
    @statement << "01/01/20" # time.date
    @statement << ""
    @statement << debit_amount
    @statement << @balance
    
  end
end