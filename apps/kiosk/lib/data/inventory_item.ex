defmodule Kiosk.InventoryItem do
    use Ecto.Schema
    import Ecto.Changeset

    schema "inventory_item" do
        field :name, :string
        field :description, :string
        field :brand, :string
        field :size, :float, default: 0.0
        field :size_unit, :string
        field :image, :string
    end

    def changeset(struct, params \\ %{}) do
        struct
        |> cast(params, [:name, :description, :brand, :size, :size_unit, :image])
    end

end
