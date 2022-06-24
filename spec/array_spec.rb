RSpec.describe Array do
  it 'tests length of subject' do
    expect(subject.length).to eq(0)
    subject.push(1911)
    expect(subject.length).to eq(1)
  end
end