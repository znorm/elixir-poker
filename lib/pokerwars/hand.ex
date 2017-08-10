defmodule Pokerwars.Hand do

    def score(cardArray) do
        suits = Enum.map(cards, fn x -> x[:suit] end)
        ranks = Enum.map(cards, fn x -> x[:rank] end)

        cond do
          first_suit = suits[0]
          array_of_same_suit(suits, first_suit)
        end
    end


    def array_of_same_suit([head | tail], first_suit) do
        cond do
          head != first_suit -> false
          empty?(tail) -> true
          _ -> array_of_same_suit(tail, first_suit)
        end
    end
end


