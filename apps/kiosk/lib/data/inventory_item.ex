defmodule Kiosk.InventoryItem do
  @derive [ExAws.Dynamo.Encodable]
  defstruct [:itemId, :name, :insertedOn]
end
