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
    horas=horas_extra()
    valor_hora_extra=(salario/160)*1.5*horas  # Suponiendo que trabaja 160 hrs mensuales
    total=salario+valor_hora_extra
    Util.show_message("Ingrese el nombre del empleado: #{nombre}\nIngrese el salario base: $#{salario}\nIngrese las horas extras trabajadas: #{horas}\nEl salario total de #{nombre} es de $#{trunc(total)}")
  end

end
Main.main()
