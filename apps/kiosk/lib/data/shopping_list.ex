defmodule Kiosk.Data.ShoppingList do
    use Ecto.Schema
    import Ecto.Changeset
    alias Kiosk.Repo

    schema "shopping_list" do
        field :name, :string
        field :archived, :boolean
        has_one :user, Kiosk.Data.User
        has_many :items, Kiosk.Data.ShoppingListItem
        timestamps()
    end

    def changeset(struct, params \\ %{}) do
        struct
        |> Repo.preload([:user, :items])
        |> cast(params, [:name, :archived, :user_id])
        |> cast_assoc(:user)
        |> cast_assoc(:items)
    end

end
