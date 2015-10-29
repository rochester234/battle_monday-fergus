require './lib/player'

describe Player do
  subject(:player) { Player.new("Tom") }

    it 'allocates a players name' do
        expect(subject.name).to eq "Tom"
    end

end
