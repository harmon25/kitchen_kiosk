defmodule Kiosk.Data.Category do
    use Ecto.Schema
    import Ecto.Changeset
            
  schema "category" do
      field :name, :string
      timestamps()
  end

    def changeset(struct, params \\ %{}) do
        struct
        |> cast(params, [:name])
    end

end