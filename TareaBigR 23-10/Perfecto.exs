Code.require_file("util.exs", __DIR__)

defmodule Perfecto do
  def main do
    n = Util.ingresar("ingrese un numero entero: ", :entero)
    Util.mostrar_mensaje("#{n} es perfecto: #{perfecto?(n)}")
  end

  # un numero es perfecto si la suma de sus divisores propios es igual a el
  def perfecto?(n) when n > 0, do: suma_divisores(n, 1, 0) == n
  def perfecto?(_n), do: false

  # si el candidato llego a n, termino y devuelvo el acumulador
  defp suma_divisores(n, d, acc) when d >= n, do: acc

  # si d divide a n, lo estariamos sumando al acumulador
  defp suma_divisores(n, d, acc) when rem(n, d) == 0 do
    suma_divisores(n, d + 1, acc + d)
  end

  # si no lo divide, paso al siguiente candidato
  defp suma_divisores(n, d, acc), do: suma_divisores(n, d + 1, acc)
end

Perfecto.main()
