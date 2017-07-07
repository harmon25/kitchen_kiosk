defmodule Mix.Tasks.CreateTables do
  use Mix.Task
  alias ExAws.Dynamo

  @shortdoc "Create all tables"
  def run(_) do

    Application.ensure_all_started(:hackney)
    
    inventory_item_fields =  %{item_id: :string}

    Dynamo.create_table("InventoryItem", "item_id", inventory_item_fields, 1, 1) |> ExAws.request!

  end
end