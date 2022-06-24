RSpec.describe Array do
  subject(:sally) do
    list = [5,10]
  end

  it 'tests the subject length' do
    expect(subject.length).to eq(2)
    subject.pop(1)
    expect(subject.length).to eq(1)
  end

  it 'confirms that sally is equal to original array' do
    expect(sally).to eq(subject)
  end
end