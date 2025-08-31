defmodule Main do
  def main() do
    pedir_datos()
  end

  def pedir_datos() do
    name = "Ingrese su nombre:" |> Util.input()
    kilometers = Util.input("Introduce la distancia recorrida en kilometros: ", :float)
    liters = Util.input("Introduce el combustible usado en litros: ", :integer)
    efficiency = Float.round(kilometers / liters, 2)
    Util.show_message("El gasto de combustible de #{name} es de #{efficiency} kilometros por litro")
  end

end
Main.main()
