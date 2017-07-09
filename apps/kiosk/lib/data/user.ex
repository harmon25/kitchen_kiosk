defmodule Kiosk.User do
    use Ecto.Schema
      import Ecto.Changeset
            
  schema "user" do
      field :name, :string
      field :email, :string
  end

    def changeset(struct, params \\ %{}) do
        struct
        |> cast(params, [:name, :email])
    end

end