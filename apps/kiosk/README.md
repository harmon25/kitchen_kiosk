# Kiosk

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `kiosk` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:kiosk, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/kiosk](https://hexdocs.pm/kiosk).

alias ExAws.Dynamo

item = %Kiosk.InventoryItem{name: "Crazy Canuk", inserted_at: System.system_time(:second)}
Dynamo.put_item("inventoryItem", item) |> ExAws.request!