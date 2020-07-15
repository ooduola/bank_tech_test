class Transaction

  def initialize(credit: nil, debit: nil, balance: nil) 
    @debit = debit
    @credit = credit
    @balance = balance
  end

  def display
    "01/07/2020||#{@credit} ||#{@debit} ||#{@balance} "
  end


end