defmodule Kiosk.ShoppingList do
  @derive [ExAws.Dynamo.Encodable]
  defstruct [:name, :inserted_at]
end
