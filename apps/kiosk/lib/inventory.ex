defmodule Kiosk.Inventory do
  alias Kiosk.Repo
  alias Kiosk.Data.{User, Inventory, InventoryItem}
  import Ecto.{Changeset, Query}

  def new_item(item_params) do
      cs = InventoryItem.changeset(%InventoryItem{}, item_params)
      case Repo.insert(cs) do
        {:ok, item} -> item
        {:error, error} -> {:error, error}
      end
  end 

  def add(%InventoryItem{} = item, %{expiry: expiry, quantity: quantity} = inv_item_params) do
    cs = Inventory.changeset(%Inventory{}, Map.merge(inv_item_params, %{inventory_item: item}))

    case Repo.insert(cs) do
      {:ok, item} -> item
      {:error, error} -> {:error, error}
    end
  end 

  def add(item_id, %{expiry: expiry, quantity: quantity} = inv_item_params) do
    cs = Inventory.changeset(%Inventory{}, Map.merge(inv_item_params, %{inventory_item_id: item_id}))

    case Repo.insert(cs) do
      {:ok, item} -> item
      {:error, error} -> {:error, error}
    end
  end 

end
