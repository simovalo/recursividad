Code.require_file("util.exs", __DIR__)

defmodule Potencia do
  def main do
    n = Util.ingresar("ingrese el numero n (entero positivo que quiere saber si es potencia de b): ", :entero)
    b = Util.ingresar("Ingrese la base b (tambien entero positivo): ", :entero)
    Util.mostrar_mensaje("#{n} es potencia de #{b}: #{es_potencia?(n, b)}")
  end

  # si llegamos a 1, entonces significa que la n si es potencia de b
  def es_potencia?(1, _b), do: true

  # si la base es 0, 1 o negativa, no se puede dividir hasta llegar a 1
  def es_potencia?(_n, b) when b <= 1, do: false

  # si n es menor que 1 o la division no es exacta, no es potencia
  def es_potencia?(n, b) when n < 1 or rem(n, b) != 0, do: false

  # dividir n entre b y repetir una y otra vez hasta llegar a 1 o a un numero menor que 1
  def es_potencia?(n, b) do
    es_potencia?(div(n, b), b)
  end
end

Potencia.main()
