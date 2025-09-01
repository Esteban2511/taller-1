defmodule Main do
  def main() do
    pedir_datos()
  end
  def nombre() do
    "Ingrese su nombre:" |> Util.input(:string)
  end
  def temp_celsius() do
    "Ingrese la temperatura en grados celsius: " |> Util.input(:float)
  end
  def pedir_datos() do
    name = nombre()
    celcius = temp_celsius()
    fahrenheit = Float.round((celcius * 9 / 5 )+ 32, 1)
    kelvin = Float.round(celcius + 273.15, 1)
    Util.show_message("La temperatura de #{name} es de: \n
     #{fahrenheit} grados farenheit \n
     #{kelvin} grados kelvin")
  end
end
Main.main()
