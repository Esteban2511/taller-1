defmodule Main do
  def main() do
    pedir_datos()
  end
  def pedir_datos() do
    name = "Ingrese su nombre:" |> Util.input()
    celcius = Util.input("Ingrese la temperatura en grados celsius: ", :float)
    fahrenheit = Float.round((celcius * 9 / 5 )+ 32, 1)
    kelvin = Float.round(celcius + 273.15, 1)
    Util.show_message("La temperatura de #{name} es de: \n
     #{fahrenheit} grados farenheit \n
     #{kelvin} grados kelvin")
  end
end
Main.main()
