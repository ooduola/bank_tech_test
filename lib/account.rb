class Account

  def balance
    @balance = @credit_amount
  end

  def deposit(credit_amount)

    @credit_amount = credit_amount

    # if credit_amount.class == Integer
    #   "deposit was successful"
    # else
    #   raise ArgumentError
    # end
    # "deposit was successful"
  end

  # def withdraw(debit_amount)

  #   if debit_amount.class == Integer
  #     "withdrawal was successful"
  #   else
  #     raise ArgumentError
  #   end
  # end

end