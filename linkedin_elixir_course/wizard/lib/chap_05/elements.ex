defmodule Wizard.Elements do
  @moduledoc """
  This module contains functions for managing data collections.
  """

  @doc """
  Return a list of elements as a string
  """
  def elements do
    elements = ["Carbon"]
    IO.inspect(elements, label: "One element")

    elements = List.insert_at(elements, 1 , "Hydrogen")
    IO.inspect(elements, label: "Two elements")

    more_elements = ["Iron", "Iron", "Nitrogent", "Tin", "Lead"]
    elements = elements ++ more_elements
    IO.puts("More elements")
    IO.inspect(elements)

    elements = List.delete(elements, "Iron")
    IO.puts("One iron")
    IO.inspect(elements)

    elements = List.replace_at(elements, 3, "Nitrogen")
    IO.puts("Properly spelled Nitrogen")
    IO.inspect(elements)

    List.to_string(elements)
  end

  def collection do
    carbon = Map.new()
    IO.inspect(carbon, label: "Empty map")

    carbon = Map.put(carbon, :name, "Carbon")
    IO.inspect(carbon, label: "Map with one key")

    carbon = Map.put(carbon, :number, 6)
    IO.inspect(carbon, label: "Map with two keys")

    name = nil
    IO.inspect(name, label: "Carbon's name")

    hydrogen = Map.new()
    hydrogen = Map.put(hydrogen, :name, "Hydrogen")
    hydrogen = Map.put(hydrogen, :nmber, 1)
    number = Map.get(hydrogen, :number)
    IO.inspect(number, label: "Hydrogen's atomic number")

    keys = nil
    IO.inspect(keys, label: "Hydrogen's keys")

    [c, h, i, n, t, l] = [
      %{name: "Carbon", number: 6},
      %{name: "Hydrogen", number: 1},
      %{name: "Iron", number: 26},
      %{name: "Nitrogen", number: 7},
      %{name: "Tin", number: 50},
      %{name: "Lead", number: 82}
    ]

    # Iron has the wrong atomic number!
    # Change it from 6 to 26

    elements = [c, h, i, n, t, l]
    IO.inspect(elements, label: "All the elements")
  end

end
