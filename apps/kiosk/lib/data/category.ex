defmodule Kiosk.Data.Category do
    use Ecto.Schema
    import Ecto.Changeset
            
  schema "category" do
      field :name, :string
      many_to_many :items, Kiosk.Data.Item, join_through: "item_categories"
      many_to_many :brands, Kiosk.Data.Brand, join_through: "brand_categories"
      timestamps()
  end

    def changeset(struct, params \\ %{}) do
        struct
        |> cast(params, [:name])
    end

end