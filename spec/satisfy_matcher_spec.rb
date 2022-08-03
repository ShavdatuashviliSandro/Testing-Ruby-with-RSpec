RSpec.describe 'satisft matcher' do
  # subject {'racecar'}
  subject {'racecar'}

  it 'is a palindrome' do
    expect(subject).to satisfy {|value| value == value.reverse}
  end

  it 'should accept a custom error message' do
    expect(subject).to satisfy(' be a palindrome') do |value|
      value == value.reverse
    end
  end
end