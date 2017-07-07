defmodule Kiosk do
  @moduledoc """
  Documentation for Kiosk.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Kiosk.hello
      :world

  """
  def table_props() do
    [
      %{name: "InventoryItem", primary_key: "id", fields: %{id: :string} },
      %{name: "ShoppingList", primary_key: "id", fields: %{id: :string} },
      %{name: "ShoppingListItem", primary_key: "id", fields: %{id: :string} },
    ]
  end
end
