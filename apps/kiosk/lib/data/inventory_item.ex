defmodule Kiosk.InventoryItem do
  @derive [ExAws.Dynamo.Encodable]
  defstruct [:name, :inserted_at]
end
