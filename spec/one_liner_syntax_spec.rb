RSpec.describe 'shorthand syntax' do
  # let(:sub) {5}
  subject {5}

  context 'with classic syntax' do
    it 'shoud equal 5' do
      expect(subject).to eq(5)
    end
  end

  context 'with one-linear syntax' do
    it { is_expected.to eq(5) }
  end
end