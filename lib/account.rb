class Account

  def balance
    @balance = @credit_amount
  end

  def deposit(credit_amount)
    @credit_amount = credit_amount
  end
end