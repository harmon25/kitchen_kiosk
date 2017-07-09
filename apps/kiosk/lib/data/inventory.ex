defmodule Kiosk.Inventory do
    use Ecto.Schema
    import Ecto.Changeset

    schema "inventory" do
      belongs_to :inventory_item, Kiosk.InventoryItem
      field :quantity, :integer
    end

    def changeset(struct, params \\ %{}) do
      struct
      |> cast(params, [:quantity, :inventory_item_id])
    end

end
