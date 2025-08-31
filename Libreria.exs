defmodule Main do

  def main() do
    calcular_valor_inventario()
  end

  def ingresar_titulo() do
    "Ingrese el título del libro: "
    |> Util.input(:string)
  end

  def ingresar_cantidades_dispo() do
    "Ingrese la cantidad de libros disponibles: "
    |> Util.input(:integer)
  end

  def ingresar_precio_unidad() do
    "Ingrese el precio por unidad del libro:"
    |> Util.input(:float)
  end

  def calcular_valor_inventario() do
    nombre= ingresar_titulo()
    cantidad= ingresar_cantidades_dispo()
    precio= ingresar_precio_unidad()
    valor_inventario= cantidad * precio
    total= trunc(valor_inventario) |> Util.miles()
    Util.show_message("El libro #{nombre} tiene #{cantidad} unidades, con un valor de total de $#{total}")
  end

end

Main.main()

#defmodule Main do
#  def main() do
#    pedir_datos()
#  end
#  def pedir_datos() do
#    titulo = "Ingrese el titulo del libro:" |> Util.input()
#    inventario = Util.input("Ingrese la cantidad de unidades disponibles del libro:", :integer)
#    precio = Util.input("Ingrese el precio del libro en pesos:", :float)
#    valor = precio * inventario |> Float.round(0) |> trunc() |> Util.miles()
#    Util.show_message("El libro #{titulo} con #{inventario} unidades disponibles tiene un valor total de inventario de #{valor} pesos")
#  end
#end
#Main.main()
