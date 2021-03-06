RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    expect([5,7,9]).to all(be_odd)
    expect([0,0]).to all(be < 1 )
  end

  describe [5,7,9] do
    it {is_expected.to all(be_odd)}
    it {is_expected.to all(be < 10)}

  end
end