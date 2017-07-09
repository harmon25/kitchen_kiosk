defmodule Kiosk.Data.InventoryItem do
    use Ecto.Schema
    alias Kiosk.Repo
    import Ecto.Changeset

    schema "inventory_item" do
        field :name, :string
        field :description, :string
        field :expires, :boolean
        field :size, :float, default: 0.0
        field :size_unit, :string
        field :image, :string
        many_to_many :categories, Kiosk.Data.Category, join_through: :item_categories
        has_one :brand, Kiosk.Data.Brand
        timestamps()
    end

    def changeset(struct, params \\ %{}) do
        struct
        |> Repo.preload(:categories)
        |> cast(params, [:name, :description, :brand, :size, :size_unit, :image, :brand_id])
        |> cast_assoc(:categories)
    end

end
