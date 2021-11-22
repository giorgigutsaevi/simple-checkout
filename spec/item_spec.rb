require 'item'

describe Item do
  subject {Item.new}
  let(:cheese) {Item.new(3.99)}

  it 'initializes with a price value as indicated by a user' do
    expect(cheese.price).to eq 3.99
  end


end