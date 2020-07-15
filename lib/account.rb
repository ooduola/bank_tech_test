# frozen_string_literal: true

require_relative 'transaction'

class Account
  # attr_reader :print_statement

  def initialize
    @balance = 0
    @account_activity = []
  end

  def deposit(credit_amount)
    @balance += credit_amount
    transaction = Transaction.new(credit: credit_amount, balance: @balance)
    @account_activity << transaction.display
    "deposited #{credit_amount}. balance now #{@balance}"
  end

  def withdraw(debit_amount)
    @balance -= debit_amount
    transaction = Transaction.new(debit: debit_amount, balance: @balance)
    @account_activity << transaction.display
    "withdrawn #{debit_amount}. balance now #{@balance}"
  end

  def statement
    if @account_activity.empty?
      'no transactions made'
    else
      @account_activity
    end
  end
end
