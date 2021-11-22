require 'checkout'

describe Checkout do
  subject {Checkout.new}
	let(:cheese) {Item.new(5)}
	let(:chocolate) {Item.new(4)}

  it 'creates an instance of itself' do
    checkout = Checkout.new 
    expect(checkout).to be_an_instance_of(Checkout)
  end

	describe "#scan" do
		context "is able to scan items"
			it 'has a #scan method returning the price of a scanned item' do
				expect(subject).to respond_to(:scan).with(1).argument
			end
	end

	describe "#total" do
		context "#total for all scanned items"

			it 'has a #total method' do
				expect(subject).to respond_to(:total)
			end

			it 'displays total for all scanned items' do
				subject.scan(cheese)
				subject.scan(chocolate)
				expect(subject.total).to eq 9
			end
	end
	
end