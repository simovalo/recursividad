Code.require_file("util.exs", __DIR__)

defmodule VocalesGraphemes do
  def main do
    cadena = Util.ingresar("ingrese una cadena: ", :texto)
    letras = String.graphemes(cadena)
    Util.mostrar_mensaje("la cantidad de vocales es: #{contar(letras)}")
  end

  # lista vacia, tiene vocales,
  def contar([]), do: 0

  # si la primera letra es vocal, sumo 1 y sigo con el resto
  def contar([h | t]) when h in ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"] do
    1 + contar(t)
  end

  # si no es vocal, sigo con el resto sin sumar
  def contar([_ | t]), do: contar(t)
end

VocalesGraphemes.main()
