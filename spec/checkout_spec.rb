require 'checkout'

describe Checkout do
  subject {Checkout.new}
  it 'creates an instance of itself' do
    checkout = Checkout.new 
    expect(checkout).to be_an_instance_of(Checkout)
  end

  context "is able to scan items"
  it 'has a #scan method' do
    expect(subject).to respond_to(:scan)
  end
end