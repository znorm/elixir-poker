defmodule Pokerwars.Card do
  # Ranks of numbered cars are represented by the number (2..10)
  # Jack, Queen, King, Ace represented by 11, 12, 13, 14 respectively

  # Suits can be: :hearts, :diamonds, :clubs, :spades

    defstruct [:rank, :suit]

    def parse(cardString) do
        rank_char = String.slice(cardString, 0..-1)
        rank = case rank_char do
            n when n in ["A", 14] -> 14
            n when n in ["K", 13] -> 13
            n when n in ["Q", 12] -> 12
            n when n in ["J", 11] -> 11
            _ -> Integer.parse(rank_char)
        end

        %Pokerwars.Card{rank: rank, suit: String.slice(cardString, 1..-1)}

    end

    def print(card) do
        "#{card.rank}#{card.suit}"
    end


end
