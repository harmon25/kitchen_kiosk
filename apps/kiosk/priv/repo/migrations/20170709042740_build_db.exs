defmodule Kiosk.Repo.Migrations.BuildDb do
  use Ecto.Migration

  def change do

    create table(:user) do
      add :name, :text
      add :email, :text
      timestamps()
    end

    create table(:inventory_item) do
      add :name, :text
      add :description, :text
      add :brand, :text
      add :size, :float
      add :size_unit, :text
      add :image, :text
      timestamps()
    end

    create table(:inventory) do
      add :inventory_item_id, references(:inventory_item, on_delete: :nothing, type: :id)
      add :quantity, :integer
      timestamps()
    end

    create table(:shopping_list) do
      add :name, :text
      add :archived, :boolean
      add :user_id, references(:user, on_delete: :nothing, type: :id)
      timestamps()
    end


    create table(:shopping_list_item) do
      add :name, :text
      add :purchased, :boolean
      add :quantity, :integer
      add :inventory_item_id, references(:inventory_item, on_delete: :nothing, type: :id)
      add :shopping_list_id, references(:shopping_list, on_delete: :nothing, type: :id)
      timestamps()
    end

    create table(:favourites) do
      add :inventory_item_id, references(:inventory_item, on_delete: :nothing, type: :id)
      add :user_id, references(:user, on_delete: :nothing, type: :id)
      timestamps()
    end

  end
end
