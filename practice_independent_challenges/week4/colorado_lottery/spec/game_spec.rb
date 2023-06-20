require 'rspec'
require './lib/contestant'
require './lib/game'

describe Game do
  describe '#init' do
    pick_4 = Game.new('Pick 4', 2)
    mega_millions = Game.new('Mega Millions', 5, true)
  
    expect(pick_4).to be_a Game
    expect(mega_millions).to be_a Game
  end

  describe '#attriutes' do
    mega_millions = Game.new('Mega Millions', 5, true)
    pick_4 = Game.new('Pick 4', 2)

    expect(mega_millions.name).to eq('Mega Millions')
    expect(mega_millions.cost).to eq(5)
    expect(mega_millions.national_drawing?).to eq(true)
    expect(pick_4.name).to eq('Pick 4')
    expect(pick_4.cost).to eq(2)
    expect(pick_4.national_drawing?).to eq(false)
  end
end