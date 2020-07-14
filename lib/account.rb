class Account

  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = nil
  end

  def deposit(credit_amount)
    @balance += credit_amount
    @statement = "01/01/20"
  end

  def withdraw(debit_amount)
    @balance -= debit_amount
  end
end