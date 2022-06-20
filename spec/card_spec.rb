class Card
  attr_reader :type, :rank, :suit
  def initialize(type,rank,suit)
    @type = type
    @rank = rank
    @suit = suit
  end

end
RSpec.describe 'Card' do
  card = Card.new('Card type','Card rank', 'Card suit')

  it 'has a type' do
    expect(card.type).to eq('Card type')
  end

  it 'has a rank' do
    expect(card.rank).to eq('Card rank')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Card suit')
  end
end




















# ANSWER
#
# RSpec.describe 'math calculations' do
#   it 'does basic math' do
#     expect(1+2).to eq(3)
#     expect(10-2).to eq(8)
#     expect(3*4).to eq(12)
#     expect(10/2).to eq(5)
#   end
# end