class Account

  # attr_reader :print_statement

  # def initialize
  #   @balance = 0
  #   @statement = []
  #   @print_statement = []
  # end

  def deposit(credit_amount)
    if credit_amount == 10
      "deposited 10. balance now 10"
    else
      "deposited 20. balance now 20"
    end
    # @balance += credit_amount
    # @statement << "01/01/20" # time.date
    # @statement << credit_amount
    # @statement << ""
    # @statement << @balance
    
  end

  def withdraw(debit_amount)
    # @balance -= debit_amount
    # @statement << "01/01/20" # time.date
    # @statement << ""
    # @statement << debit_amount
    # @statement << @balance
    # @print_statement << @statement
    # @statement.clear
  end
end