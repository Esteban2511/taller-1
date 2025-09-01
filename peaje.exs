defmodule Main do
  def main() do
    pedir_datos()
  end
  def placa_vehiculo() do
    "Ingrese la placa del coche:" |> Util.input(:string)
  end
  def tipo_vehiculo() do
    "Ingrese el tipo de vehiculo:\n MOTO, CARRO o CAMION" |> Util.input(:string)|> String.upcase()
  end
  def peso_vehiculo() do
    "Ingrese el peso del coche en toneladas:" |> Util.input(:float)
  end
  def pedir_datos() do
    placa = placa_vehiculo()
    tipo = tipo_vehiculo()
    peso = peso_vehiculo()
    tarifa = (calcular_tarifa(tipo, peso)) |> Util.miles()
    Util.show_message("La tarifa de la placa #{placa} es de #{tarifa} pesos")
  end
  def calcular_tarifa(tipo, peso) do
    cond do
      tipo == "MOTO" -> 5000.0
      tipo == "CARRO" -> 10000.0
      tipo == "CAMION" -> 2000.0 * peso + 20000.0
    end
  end
end
Main.main()
