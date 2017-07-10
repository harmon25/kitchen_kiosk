defmodule Ui.GQL.Schema do
    use Absinthe.Schema
    import_types Ui.GQL.Objects
    alias Kiosk.Inventory

    query do

      @desc "Get an item by ID"
      field :inventory, type: list_of(:item) do
        resolve fn _ , _ ->
          {:ok, Inventory.all()}
        end
      end

    end



end