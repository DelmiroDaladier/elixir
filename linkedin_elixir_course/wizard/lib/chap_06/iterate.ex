defmodule Wizard.Iterate do
  @moduledoc """
  This module contains functions for iterating using list
  comprehensions and the Enum module.
  """

  def example1() do
    numbers = [1, 2, 3]
    IO.inspect(numbers, label: "Numbers")

    iterate = for item <- numbers do
      item * 3
    end
    IO.inspect(iterate, label: "Multiply each by 3")
  end

  def example2() do
    symbols = %{"Iron" => "Fe", "Carbon" => "C"}
    IO.inspect(symbols, label: "Symbols")

    keys = for {key, _value} <- symbols do
      key
    end
    IO.inspect(keys, label: "List the keys")

    values = for {_key, value} <- symbols do
      value
    end
    IO.inspect(values, label: "List of values")

  end

  def example3() do
    ammounts = [2, 3]
    sizes = ["cups", "spoonfuls"]
    items = ["elderflower", "pomfrey"]
    IO.inspect(ammounts, label: "Amounts")
    IO.inspect(sizes, label: "Sizes")
    IO.inspect(items, label: "Items")

    joins = for a <- ammounts, s <- sizes, i <- items do
      "#{a} #{s} of #{i}"
    end
    IO.inspect(joins, label: "Permutations")
  end

end
