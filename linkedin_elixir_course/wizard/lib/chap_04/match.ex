defmodule Wizard.Match do
  @moduledoc """
  This module contains functions for learning about
  pattern matching.
  """

  @doc """
  Use the match operator with a tuple
  """
  def tuple do
    {item, quantity, potion} = {"newt", 1, :antidote}
    "The #{potion} needs #{quantity} #{item}"
  end

  def list([head|tail]) do
    IO.puts(head)
    tail
  end

  def cast("Avada Kedavra") do
    "This spell shall not be cast"
  end

  def cast(spell) do
    "1, 2, 3! #{spell} is cast on thee!!"
  end

  def map(%{spell: s, type: t}) do
    "A #{t} #{s} spell."
  end

end
