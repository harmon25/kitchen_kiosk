defmodule Kiosk.Repo.Migrations.BuildDb do
  use Ecto.Migration

  def change do

    create table(:user) do
      add :name, :text
      add :email, :text
      timestamps()
    end

    create table(:category) do
      add :name, :text
      timestamps()
    end

    create table(:brand) do
      add :name, :text
      timestamps()
    end

    create table(:item) do
      add :name, :text
      add :description, :text
      add :expires, :boolean
      add :quantity, :float
      add :expiry_date, :naive_datetime
      add :size, :float
      add :size_unit, :text
      add :image, :text
      add :upc, :text
      add :brand_id, references(:brand, on_delete: :nothing, type: :id)
      timestamps()
    end

    create table(:item_categories) do
      add :item_id, references(:item, on_delete: :nothing, type: :id)
      add :category_id, references(:category, on_delete: :nothing, type: :id)
    end

    create table(:brand_categories) do
      add :brand_id, references(:brand, on_delete: :nothing, type: :id)
      add :category_id, references(:category, on_delete: :nothing, type: :id)
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
      add :item_id, references(:item, on_delete: :nothing, type: :id)
      add :shopping_list_id, references(:shopping_list, on_delete: :nothing, type: :id)
      timestamps()
    end

    create table(:favourite) do
      add :item_id, references(:item, on_delete: :nothing, type: :id)
      add :user_id, references(:user, on_delete: :nothing, type: :id)
      timestamps()
    end

  end
end
