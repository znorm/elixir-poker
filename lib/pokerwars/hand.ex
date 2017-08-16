defmodule Pokerwars.Hand do

    def score(cardArray) do
        suits = Enum.map(cardArray, fn x -> x.suit end)
        ranks = Enum.map(cardArray, fn x -> x.rank end)
         first_suit = Enum.at(suits, 0)

        cond do
          array_of_same_suit(suits, first_suit) and ascending_rank(ranks) -> :straight_flush
          true -> "no idea"
        end
    end


    def array_of_same_suit([_head], first_suit), do: true
    def array_of_same_suit([head | tail], first_suit) do
          head == first_suit and array_of_same_suit(tail, first_suit)
    end

    def ascending_rank([_first]), do: true
    def ascending_rank([first | [second | tail]]) do
          first + 1 == second and ascending_rank([second | tail])
    end
end


