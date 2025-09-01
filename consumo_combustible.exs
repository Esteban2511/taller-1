defmodule Main do
  def main() do
    pedir_datos()
  end
  def nombre() do
    "Ingrese su nombre:" |> Util.input(:string)
  end
  def kilometros() do
    "Ingrese la distancia recorrida en kilometros:" |> Util.input(:float)
  end
  def litros_combustible() do
    "Introduce el combustible usado en litros: " |> Util.input(:integer)
  end

  def pedir_datos() do
    name = nombre()
    kilometers = kilometros()
    liters = litros_combustible()
    efficiency = Float.round(kilometers / liters, 2)
    Util.show_message("El gasto de combustible de #{name} es de #{efficiency} kilometros por litro")
  end

end
Main.main()
