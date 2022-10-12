defmodule HelloPhoenix.Repo.Migrations.CreateBlogs do
  use Ecto.Migration

  def change do
    create table(:blogs) do
      add :title, :string
      add :author, :string
      add :body, :text
      add :image_url, :text

      timestamps()
    end
  end
end
