defmodule Kiosk.Data.Brand do
    use Ecto.Schema
    import Ecto.Changeset
            
  schema "brand" do
      field :name, :string
      many_to_many :categories, Kiosk.Data.Category, join_through: "brand_categories"
      has_many :items, Kiosk.Data.Item
      timestamps()
  end

    def changeset(struct, params \\ %{}) do
        struct
        |> cast(params, [:name])
    end

end