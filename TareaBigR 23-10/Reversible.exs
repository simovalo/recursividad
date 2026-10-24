Code.require_file("util.exs", __DIR__)

defmodule Reversible do
  def main do
    n = Util.ingresar("meta un numero entero: ", :entero)
    Util.mostrar_mensaje("es un reversible: #{inspect(reversible?(n))}")
  end

  # tendriamos que validar que si sea un numero entero y lugo revisa la suma del numero con el inverso, verificando que sean impares
  def reversible?(n) when is_integer(n) and n > 0 do
    todos_impares?(n + invertir(n, 0))
  end

  def reversible?(_), do: {:error, "tiene que ser un positivo entero"}

  # inviete el numero
  defp invertir(0, acc), do: acc

  defp invertir(n, acc) do
    invertir(div(n, 10), acc * 10 + rem(n, 10))
  end

  # revisa si los digitos son impares, si es asi devuelve true, sino false
  defp todos_impares?(0), do: true

  defp todos_impares?(n) when rem(rem(n, 10), 2) == 1 do
    todos_impares?(div(n, 10))
  end

  defp todos_impares?(_), do: false
end

Reversible.main()
