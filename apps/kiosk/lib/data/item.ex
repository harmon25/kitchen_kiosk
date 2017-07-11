defmodule Kiosk.Data.Item do
    use Ecto.Schema
    alias Kiosk.Repo
    import Ecto.Changeset

    schema "item" do
        field :name, :string
        field :description, :string
        field :expires, :boolean
        field :size, :float, default: 0.0
        field :size_unit, :string
        field :image, :string
        field :upc, :string
        many_to_many :categories, Kiosk.Data.Category, join_through: "item_categories"
        belongs_to :brand, Kiosk.Data.Brand
        has_one :inventory, Kiosk.Data.ItemInventory
        timestamps()
    end

    def changeset(struct, params \\ %{}) do
        struct
        |> Repo.preload([:categories, :inventory, :brand])
        |> cast(params, [:name, :upc, :description, :size, :size_unit, :image, :brand_id])
        |> cast_assoc(:categories)
        |> cast_assoc(:inventory)
        |> cast_assoc(:brand)
    end

end
