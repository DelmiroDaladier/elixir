defmodule Wizard.Logic do
  def demo do
    a = true
    b = 1

    IO.inspect(true and a)
    IO.inspect(a and b)
    IO.inspect(a and false)
    IO.inspect(a or b)
    IO.inspect(not a)
    IO.inspect(not false)

    IO.inspect(true && a)
    IO.inspect(b && a)
    IO.inspect(a || b)
    IO.inspect(!a)
    IO.inspect(!false)
  end
end
