defmodule Kiosk.Data.ShoppingListItem do
    use Ecto.Schema
    import Ecto.Changeset

    schema "shopping_list_item" do
        field :name, :string
        field :purchased, :boolean
        field :quantity, :integer
        has_one :item, Kiosk.Data.Item
        belongs_to :shopping_list, Kiosk.Data.ShoppingList
        timestamps()
    end

    def changeset(struct, params \\ %{}) do
        struct
        |> cast(params, [:name, :purchased, :quantity, :item_id, :shopping_list_id])
    end

end
