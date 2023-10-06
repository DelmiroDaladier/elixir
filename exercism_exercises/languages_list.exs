defmodule LanguageList do
  def new() do
    new_list = []
    new_list
  end

  def add(list, language) do
    [language | list]
  end

  def remove(list) do
    List.delete_at(list, 0)
  end

  def first(list) do
    List.first(list)
  end

  def count(list) do
    length(list)
  end

  def functional_list?(list) do
    "Elixir" in list
  end
end

new_list = LanguageList.new()

IO.puts LanguageList.add(new_list, "Elixir")

new_list = LanguageList.add(new_list, "Elixir")

IO.puts LanguageList.first(new_list)
