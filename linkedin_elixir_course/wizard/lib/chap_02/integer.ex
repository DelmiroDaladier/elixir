defmodule Wizard.Integer do
  @moduledoc """
  Module contais funtions to learn about
  Integer and Fload data types.
  """

  @doc """
  The Kernel function `is_integer` returns TRUE if
  the argument it receives is an integer.

  The Kernel function `is_float` returns TRUE if the
  argument it receives is a float.
  """
  def check(value) do
    IO.puts("Integer? #{is_integer(value)}")
    IO.puts "Float? #{is_float(value)}"
  end

  def demo do
    i = 245
    f = 3.1415
    s = to_string(i)

    IO.puts("Integer: #{i}")
    IO.inspect(Integer.parse(s), label: "Parse")
    IO.inspect(Integer.digits(i), label: "Digits")

    IO.puts "Float: #{f}"
    IO.puts "Round: #{Float.round(f)}"
    IO.puts "Round to 1: #{Float.round(f, 1)}"
    IO.inspect(Float.parse(s), label: "Parse")
  end

end
