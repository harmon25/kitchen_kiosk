defmodule Kiosk.Data.Inventory do
    use Ecto.Schema
    import Ecto.Changeset

    schema "inventory" do
      belongs_to :inventory_item, Kiosk.Data.InventoryItem
      field :expiry_date, :utc_datetime
      field :quantity, :integer
      timestamps()
    end

    def changeset(struct, params \\ %{}) do
      struct
      |> cast(params, [:quantity, :inventory_item_id])
    end

end
