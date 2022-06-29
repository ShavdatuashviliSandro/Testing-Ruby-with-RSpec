class Prince
  attr_reader :name

  def initialize(name)
    @name=name
  end
end

RSpec.describe Prince do
  subject {described_class.new('Boris')}
  let(:louis) {described_class.new('Louis')}

  it 'represents a great person' do
    expect(subject.name).to eq('Boris')
    puts described_class
    puts louis.name
  end
end