defmodule Main do

  def main() do
    calcular_total()
  end

  def nombre_empleado() do
    "Ingrese el nombre del empleado: "
    |> Util.input(:string)
  end

  def salario_base() do
    "Ingrese el salario base del empleado: "
    |> Util.input(:float)
  end

  def horas_extra() do
    "Ingrese las horas extra trabajadas: "
    |> Util.input(:integer)
  end

  def calcular_total() do
    nombre=nombre_empleado()
    salario=trunc(salario_base())
    salario=salario_base()
    horas=horas_extra()
    valor_hora_extra=(salario/160)*1.5*horas  # Suponiendo que trabaja 160 hrs mensuales
   total = salario + valor_hora_extra

  Util.show_message(
    " el nombre del empleado es: #{nombre}\n" <>
    " con un salario base de: $#{Util.miles(salario)}\n" <>
    " las horas extras trabajadas son : #{horas}\n" <>
    " El salario total de #{nombre} es de $#{Util.miles(total)}")
  end

end
Main.main()
