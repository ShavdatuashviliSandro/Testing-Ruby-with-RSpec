RSpec.describe 'firetruck' do
  it 'should check that firestruck starts with and end with fire and truck' do
    expect(subject).to start_with('fire').and end_with('truck')
  end
end

RSpec.describe 20 do
  it 'should check that 20 is even and it responds to the times method' do
    expect(subject).to be_even.and respond_to(:times)
  end
end

RSpec.describe [4,8,15,16,23,42] do
  it 'should check that subject including number 42 and start with values 4,8,15' do
    expect(subject).to include(42).and start_with(4,8,15)
  end
end