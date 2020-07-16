# frozen_string_literal: true

class Transaction
  def initialize(credit: nil, debit: nil, balance: nil)
    @debit = debit
    @credit = credit
    @balance = balance
    @time = Time.now
  end

  def display
    "#{@time}||#{@credit} ||#{@debit} ||#{@balance} "
  end

end
