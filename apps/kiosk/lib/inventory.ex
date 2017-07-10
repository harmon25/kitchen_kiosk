defmodule Kiosk.Inventory do
  alias Kiosk.Repo
  alias Kiosk.Data.{User, Item}
  import Ecto.{Changeset, Query}

  def new_item(item_params) do
      cs = Item.changeset(%Item{}, item_params)
      case Repo.insert(cs) do
        {:ok, item} -> item
        {:error, error} -> {:error, error}
      end
  end 



  def all() do
    q = from i in Item,
        left_join: c in assoc(i, :categories),
        preload: [categories: c],
        select: i

    Repo.all(q)
  end

end
