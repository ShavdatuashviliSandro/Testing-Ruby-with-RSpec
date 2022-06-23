class Card
  attr_accessor :rank, :suit
  def initialize(rank,suit)
    @rank = rank
    @suit = suit
  end
end
RSpec.describe 'Card' do
  let(:card) { Card.new('Ace','Spades')}
  # let(:x) { 1 + 1}
  # let(:y) { x + 10 }

  it 'has a rank and that rank can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a custom error message' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    comparison = 'Spades'
    expect(card.suit).to eq(comparison) #, "Hey, I expected #{comparison} but I got #{card.suit} instead!"
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