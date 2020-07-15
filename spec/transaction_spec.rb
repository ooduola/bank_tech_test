require 'transaction'

RSpec.describe Transaction do

  date = Time.new(2020, 07, 01, 12)

  it 'creates a new date when initalised' do
    # allow(Time).to receive(:now).and_return(date) 
    expect(subject.display).to eq '01/07/2020|| || || '
  end

  it 'returns credit amount when initialized with credit argument' do
    subject = described_class.new(credit: 1000)
    expect(subject.display).to eq '01/07/2020||1000 || || '
  end

end