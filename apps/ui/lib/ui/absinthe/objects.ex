defmodule Ui.GQL.Objects do
  use Absinthe.Schema.Notation
  import_types Absinthe.Type.Custom


 @desc "A project brand"
 object :brand do
    field :id, :id
    field :name, :string
  end

 @desc "A project brand"
 object :favourite do
    field :id, :id
    field :item, :item
  end

 @desc "A product category"
 object :category do
    field :id, :id
    field :name, :string
  end

 @desc "A shopping list item"
 object :shopping_list_item do
    field :id, :id
    field :name, :string
    field :purchased, :boolean
    field :quantity, :integer
    field :item, :item
  end

 @desc "A shopping list"
 object :shopping_list do
    field :id, :id
    field :name, :string
    field :archived, :boolean
    field :user, :user
    field :items, list_of(:shopping_list_item)
  end

 @desc "An inventory item"
 object :item do
    field :id, :id
    field :name, :string
    field :description, :string
    field :expires, :boolean
    field :size, :float
    field :size_unit, :string
    field :image, :string
    field :quantity, :float
    field :expiry_date, :string
    field :brand, :brand
    field :categories, list_of(:category)
  end



 @desc "A User"
 object :user do
    field :id, :id
    field :email, :string
    field :name, :string
    field :favourites, list_of(:favourite)
  end


end