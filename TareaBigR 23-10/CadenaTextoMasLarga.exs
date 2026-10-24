defmodule Larga do
  def main do
    lista = ["hola", "programacion", "robinson", "raul", "el", "mas", "largo"]
    IO.puts("la palabra mas larga es: #{mas_larga(lista)}")
  end

  # si solo es uno, es el mas largo
  def mas_larga([x]), do: x

  # comparar la primera con la mas larga del resto
  def mas_larga([h | t]) do
    m = mas_larga(t)

    if String.length(h) >= String.length(m) do
      h
    else
      m
    end
  end
end

Larga.main()
