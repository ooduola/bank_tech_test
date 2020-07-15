require 'transaction'

RSpec.describe Transaction do

  @date = "01/07/2020"

  it 'creates a new date when initalised' do
    # allow(Time).to receive(:now).and_return(date) 
    expect(subject.display).to eq "01/07/2020|| || || "
  end

  it 'returns credit value when initialized with credit argument' do
    subject = described_class.new(credit: 1000)
    expect(subject.display).to eq '01/07/2020||1000 || || '
  end

  it 'returns debit value when initialized with debit argument' do
    subject = described_class.new(debit: 500)
    expect(subject.display).to eq '01/07/2020|| ||500 || '
  end

  it "returns balance value when initialized with balance argument" do
    subject = described_class.new(balance: 1500) 
    expect(subject.display).to eq '01/07/2020|| || ||1500 '
  end

end