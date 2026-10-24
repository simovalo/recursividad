Code.require_file("util.exs", __DIR__)

defmodule VocalesBinario do
  def main do
    cadena = Util.ingresar("Ingrese una cadena: ", :texto)
    Util.mostrar_mensaje("la cantidad de vocales es: #{contar(cadena)}")
  end

  # cadena vacia, no hay vocales
  def contar(""), do: 0

  #aclaracion para mi maestro: de la linea 16 a la 23 es totalmente un copia y pega de la ia,
  #porque la unica alternativa que encontre era usar un Enum.count pero usted pide recuricividad y no entiendo del todo este codigo
  #es mucho mejor con el Grapheme

  # separo el primer caracter del resto y si es vocal sumo 1
  def contar(<<c::utf8, resto::binary>>) when c in [?a, ?e, ?i, ?o, ?u, ?A, ?E, ?I, ?O, ?U] do
    1 + contar(resto)
  end

  # si no es vocal, sigo con el resto
  def contar(<<_::utf8, resto::binary>>), do: contar(resto)
end

VocalesBinario.main()
