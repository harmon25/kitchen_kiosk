defmodule Kiosk.Favourites do
    use Ecto.Schema
    import Ecto.Changeset
  
  schema "favourites" do
    belongs_to :inventory_item, Kiosk.InventoryItem
    belongs_to :user, Kiosk.User
  end

   
    def changeset(struct, params \\ %{}) do
        struct
        |> cast(params, [:inventory_item_id, :user_id])
    end

end