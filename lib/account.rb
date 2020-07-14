class Account

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(credit_amount)
    @balance += credit_amount
  end
end