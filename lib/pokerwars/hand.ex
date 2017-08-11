defmodule Pokerwars.Hand do

    def score(cardArray) do
        suits = Enum.map(cardArray, fn x -> x[:suit] end)
        ranks = Enum.map(cardArray, fn x -> x[:rank] end)
         first_suit = suits[0]

        cond do
          array_of_same_suit(suits, first_suit) and ascending_rank(ranks) -> :straight_flush
          true -> "no idea"
        end
    end


    def array_of_same_suit([head | tail], first_suit) do
        cond do
          head != first_suit -> false
          is_list?(tail) != true -> true
          true -> array_of_same_suit(tail, first_suit)

        end
    end

    def ascending_rank([first | [second | tail]]) do
        cond do
          (first + 1) != second -> false
          isList?(tail) -> true
          true -> ascending_rank([second | tail])
        end
    end
end


