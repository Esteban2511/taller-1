defmodule Main do
  def main() do
    cliente = ingresar_nombre_cliente()
    peso = ingresar_peso()
    tipo_envio = ingresar_tipo_envio()
    costo = calcular_costo(peso, tipo_envio)

    resultado = {cliente, peso, tipo_envio, costo}

    # Mostrar en JOptionPane
    Util.show_message("Resultado:\n#{inspect(resultado)}")

    resultado
  end

  def ingresar_nombre_cliente() do
    "Ingrese el nombre del cliente: "
    |> Util.input(:string)
  end

  def ingresar_peso() do
    "Ingrese el peso del paquete (kg): "
    |> Util.input(:float)
  end

  def ingresar_tipo_envio() do
    opcion =
      "Seleccione el tipo de envío:\n1. Económico\n2. Express\n3. Internacional"
      |> Util.input(:integer)

    case opcion do
      1 -> "Económico"
      2 -> "Express"
      3 -> "Internacional"
      _ -> "Desconocido"
    end
  end

  def calcular_costo(peso, tipo_envio) do
    case tipo_envio do
      "Económico" ->
        cond do
          true -> peso * 5000
        end

      "Express" ->
        cond do
          true -> peso * 8000
        end

      "Internacional" ->
        if peso <= 5 do
          peso * 15000
        else
          peso * 12000
        end

      _ ->
        0
    end
  end
end
Main.main()
