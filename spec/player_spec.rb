require 'spec_helper'

module TicTacToe
  describe Player do
    let(:input) { {team: 'O', name: 'Someone'} }
    context "#initialize" do
      it "raises an exception when initialized with invalid hash" do
        expect{ Player.new({}) }.to raise_error
      end
      it "does not raise an error when initialized with valid input hash" do
        expect{ Player.new(input) }.to_not raise_error
      end
      it "returns the player's name" do
        player = Player.new(input)
        expect(player.name).to eq('Someone')
      end
      it "returns the player's team" do
        player = Player.new(input)
        expect(player.team).to eq('O')
      end
    end
  end
end
