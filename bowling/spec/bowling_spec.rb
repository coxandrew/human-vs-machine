# frozen_string_literal: true

require "bowling"

RSpec.describe Bowling do
  let(:game) { Bowling.new }

  def roll_many(pins, times)
    times.times { game.roll(pins) }
  end

  def roll_spare
    game.roll(5)
    game.roll(5)
  end

  def roll_strike
    game.roll(10)
  end

  describe '#score' do
    context 'when all rolls are gutter balls' do
      it 'scores 0' do
        roll_many(0, 20)
        expect(game.score).to eq(0)
      end
    end

    context 'when all rolls knock down only 1 pin' do
      it 'scores 20' do
        roll_many(1, 20)
        expect(game.score).to eq(20)
      end
    end

    context 'when a spare is rolled' do
      it 'adds a bonus of the next roll to the spare' do
        roll_spare
        game.roll(3)
        roll_many(0, 17)
        expect(game.score).to eq(16)
      end
    end

    context 'when a strike is rolled' do
      it 'adds a bonus of the next two rolls to the strike' do
        roll_strike
        game.roll(4)
        game.roll(3)
        roll_many(0, 16)
        expect(game.score).to eq(24)
      end
    end

    context 'when a perfect game is rolled' do
      it 'scores 300' do
        roll_many(10, 12)
        expect(game.score).to eq(300)
      end
    end
  end
end
