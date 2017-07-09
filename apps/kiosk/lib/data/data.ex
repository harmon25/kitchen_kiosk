defmodule Kiosk.Data do
  alias Kiosk.Repo
  alias Kiosk.Data.{User, Inventory, Favourites, ShoppingList}
  import Ecto.{Changeset, Query}

  @doc """
    Return all inventory items
  """
  def inventory() do
    
  end

  @doc """
    Return all user favourites items
  """
  def favourites(%User{}) do
    
  end

  def favourites(user_id) do
    
  end

  def shopping_lists() do
    
  end

  def shopping_list() do
    
  end

end
