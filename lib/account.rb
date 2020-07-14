class Account

  # attr_reader :print_statement

  def initialize
    @balance = 0
  #   @statement = []
  #   @print_statement = []
  end

  def deposit(credit_amount)
    @balance += credit_amount
    "deposited #{credit_amount}. balance now #{@balance}"
  
    # @statement << "01/01/20" # time.date
    # @statement << credit_amount
    # @statement << ""
    # @statement << @balance
    
  end

  def withdraw(debit_amount)
    @balance -= debit_amount
    "withdrawn #{debit_amount}. balance now #{@balance}"
    # @balance -= debit_amount
    # @statement << "01/01/20" # time.date
    # @statement << ""
    # @statement << debit_amount
    # @statement << @balance
    # @print_statement << @statement
  end

  def statement
    10
  end
end