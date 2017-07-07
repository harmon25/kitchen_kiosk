defmodule Mix.Tasks.DropTables do
  use Mix.Task
  alias ExAws.Dynamo

  @shortdoc "Drop all tables"
  def run(_) do

    Application.ensure_all_started(:hackney)
    


  end
end