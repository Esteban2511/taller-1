defmodule Main do
  def main() do
    pedir_datos()
  end
  def pedir_datos() do
    placa = "Ingrese la placa del coche:" |> Util.input()
    tipo = Util.input("Ingrese el tipo de vehiculo:\n MOTO, CARRO o CAMION", :string) |> String.upcase()
    peso = Util.input("Ingrese el peso del coche en toneladas:", :float)
    tarifa = Float.to_string((calcular_tarifa(tipo, peso)), decimals: 0) |> Util.miles()
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
