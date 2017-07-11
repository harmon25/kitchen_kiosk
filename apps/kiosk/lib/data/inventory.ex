defmodule Kiosk.Data.ItemInventory do
    use Ecto.Schema
    alias Kiosk.Repo
    import Ecto.Changeset

    schema "item_inventory" do
        field :expiry_date, :utc_datetime
        field :quantity, :float, default: 0.0
        belongs_to :item, Kiosk.Data.Item
        timestamps()
    end

    def changeset(struct, params \\ %{}) do
        struct
        |> cast(params, [:expiry_date, :quantity, :item_id ])
    end

end