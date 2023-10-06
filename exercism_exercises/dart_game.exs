defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    dist = :math.sqrt(:math.pow(x, 2) + :math.pow(y, 2))
    cond do
      dist <= 1 -> 10
      dist > 1 and dist <= 5 -> 5
      dist > 5 and dist <= 10 -> 1
      true -> 0
    end
  end
end

IO.puts Darts.score({1, 1.5})
