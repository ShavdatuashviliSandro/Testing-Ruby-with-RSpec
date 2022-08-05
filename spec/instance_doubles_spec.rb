class Person
  def a
    sleep(3)
    "Hello"
  end

  def b(x,y)
    "Result = #{x + y}"
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: "Hello", b: 20)
      expect(person.a).to eq("Hello")
    end
  end

  describe 'instance double' do
    it 'can only implement methods that are defines on the class' do
      # person = instance_double(Person, a: "Hello", b: 20)
      # expect(person.b).to eq(20)
      person = instance_double(Person)
      allow(person).to receive(:b).with(10,5).and_return("Hello")

      expect(person.b(10,5)).to eq('Hello')
    end
  end
end