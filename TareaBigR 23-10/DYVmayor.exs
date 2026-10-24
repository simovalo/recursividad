defmodule Mayor do
  def main do
    lista = [3, 8, 2, 5, 9, 1]
    IO.puts("el numero mas alto es: #{mayor(lista)}")
  end

  # si solo es  uno, es el mayor
  def mayor([x]), do: x

  # dividir, resolver cada mitad y combinar
  def mayor(lista) do
    mitad = div(length(lista), 2)
    {izquierda, derecha} = dividir(lista, mitad)
    max(mayor(izquierda), mayor(derecha))
  end

  #los primeros n elementos a la izquierda, el resto a la derecha
  defp dividir(lista, 0), do: {[], lista}

  defp dividir([cabeza | cola], n) do
    {izq, der} = dividir(cola, n - 1)
    {[cabeza | izq], der}
  end
end

Mayor.main()
