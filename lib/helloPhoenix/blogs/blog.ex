defmodule HelloPhoenix.Blogs.Blog do
  use Ecto.Schema
  import Ecto.Changeset

  schema "blogs" do
    field :author, :string
    field :body, :string
    field :image_url, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(blog, attrs) do
    blog
    |> cast(attrs, [:title, :author, :body, :image_url])
    |> validate_required([:title, :author, :body, :image_url])
  end
end
