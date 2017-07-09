defmodule Kiosk.Data.Favourite do
    use Ecto.Schema
    import Ecto.Changeset
  
  schema "favourite" do
    belongs_to :inventory_item, Kiosk.Data.InventoryItem
    belongs_to :user, Kiosk.Data.User
    timestamps()
  end

   
    def changeset(struct, params \\ %{}) do
        struct
        |> cast(params, [:inventory_item_id, :user_id])
    end

end