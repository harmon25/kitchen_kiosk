defmodule Kiosk.ShoppingListItem do
    use Ecto.Schema
    import Ecto.Changeset

    schema "shopping_list_item" do
        field :name, :string
        field :purchased, :boolean
        field :quantity, :integer
        has_one :inventory_item, Kiosk.InventoryItem
        belongs_to :shopping_list, Kiosk.ShoppingList
    end

    def changeset(struct, params \\ %{}) do
        struct
        |> cast(params, [:name, :purchased, :quantity, :inventory_item_id, :shopping_list_id])
    end

end
