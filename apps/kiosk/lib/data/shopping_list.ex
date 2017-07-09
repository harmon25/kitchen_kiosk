defmodule Kiosk.Data.ShoppingList do
    use Ecto.Schema
    import Ecto.Changeset

    schema "shopping_list" do
        field :name, :string
        field :archived, :boolean
        belongs_to :user, Kiosk.Data.User
        has_one :inventory_item, Kiosk.Data.InventoryItem
        belongs_to :shopping_list, Kiosk.Data.ShoppingList
        timestamps()
    end

    def changeset(struct, params \\ %{}) do
        struct
        |> cast(params, [:name, :archived, :user_id, :inventory_item_id, :shopping_list_id])
    end

end
