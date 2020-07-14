require 'transaction'

RSpec.describe Transaction do

  date = Time.new(2020, 07, 01, 12)

  it 'creates a new date when initalised' do

    allow(Time).to receive(:now).and_return(date) 

    transaction = Transaction.new(1000, 'credit', 0)
    expect(transaction.date).to eq '01/07/2020'
  end
end