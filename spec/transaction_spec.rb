# frozen_string_literal: true

require 'transaction'

RSpec.describe Transaction do
  date = '01/07/20'

  it 'creates a new date when initalised' do
    expect(subject.display).to eq "#{Time.now}|| || || "
  end

  it 'returns credit value when initialized with credit argument' do
    allow(Time).to receive(:now).and_return(date)
    subject = described_class.new(credit: 1000)
    expect(subject.display).to eq "#{Time.now}||1000 || || "
  end

  it 'returns debit value when initialized with debit argument' do
    allow(Time).to receive(:now).and_return(date)
    subject = described_class.new(debit: 500)
    expect(subject.display).to eq "#{Time.now}|| ||500 || "
  end

  it 'returns balance value when initialized with balance argument' do
    allow(Time).to receive(:now).and_return(date)
    subject = described_class.new(balance: 1500)
    expect(subject.display).to eq "#{Time.now}|| || ||1500 "
  end
end
