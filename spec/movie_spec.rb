class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(1)
    true
  end

  def act
    "I love you, Baby"
  end

  def fall_off_ladder
    "Call my agent! No way!"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      puts actor.act
      puts actor.fall_off_ladder
      puts actor.light_on_fire
    end
  end

end

RSpec.describe Movie do
  let(:stuntman) {double("Mr. Danger", ready?: true, act: 'I love you, Baby', fall_off_ladder: 'Sure! lets do it', light_on_fire: true)}
  subject {described_class.new(stuntman)}


  describe '#start_shooting method' do
    it 'expects an actor to do 3 actions' do
      # expect(stuntman).to receive(:light_on_fire).once
      # expect(stuntman).to receive(:light_on_fire).exactly(1).times
      expect(stuntman).to receive(:light_on_fire).at_most(1).times

      # expect(stuntman).to receive(:act).once
      # expect(stuntman).to receive(:act).exactly(1).times
      expect(stuntman).to receive(:act).at_most(1).times


      subject.start_shooting
    end
  end
end