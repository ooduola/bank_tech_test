class Transaction

  def initialize(credit: nil, debit: nil) 
    @debit = debit
    @credit = credit
  end

  def display
    "01/07/2020||#{@credit} ||#{@debit} || "
  end


end