require_relative '../lib/player.rb'

describe Player do
  player = Player.new('X')
  it 'uses a symbol' do
    expect(player.symbol).to eq('X')
  end
end
