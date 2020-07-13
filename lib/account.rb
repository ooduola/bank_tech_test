class Account

  def deposit(credit_amount)
    "deposit was successful"
  end

  def withdraw(debit_amount)

    if debit_amount.class == Integer
      "withdrawal was successful"
    else
      raise ArgumentError
    end
  end

end