defmodule Kiosk.Data.User do
    use Ecto.Schema
      import Ecto.Changeset
            
  schema "user" do
      field :name, :string
      field :email, :string
      has_many :favourites, Kiosk.Data.Favourites
      timestamps()
  end

    def changeset(struct, params \\ %{}) do
        struct
        |> cast(params, [:name, :email])
    end

end