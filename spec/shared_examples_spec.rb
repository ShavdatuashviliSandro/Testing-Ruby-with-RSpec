RSpec.shared_examples 'A Ruby object with three elements' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3)
  end
end

# RSpec.shared_examples 'length is one' do
#   it 'returns length which is 1' do
#     expect(subject.length).to eq(1)
#   end
# end

RSpec.describe Array do
  subject {[1,2,3]}
  include_examples('A Ruby object with three elements')
end

RSpec.describe String do
  subject {'abc'}
  include_examples('A Ruby object with three elements')
end

RSpec.describe Hash do
  subject{{ a:1, b:2, c:3 }}
  include_examples('A Ruby object with three elements')
end

class SausageLink
  def length
    3
  end
end

RSpec.describe SausageLink do
  subject {described_class.new}
  include_examples('A Ruby object with three elements')
end