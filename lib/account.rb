class Account

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(credit_amount)
    @balance += credit_amount
  end

  def withdraw(debit_amount)
    @balance -= debit_amount
  end

  def statement
    "01/01/20"
  end

end