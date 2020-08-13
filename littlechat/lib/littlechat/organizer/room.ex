defmodule Littlechat.Organizer.Room do
  use Ecto.Schema
  import Ecto.Changeset

  schema "rooms" do
    field :slug, :string
    field :titile, :string

    timestamps()
  end

  @doc false
  def changeset(room, attrs) do
    room
    |> cast(attrs, [:titile, :slug])
    |> validate_required([:titile, :slug])
  end
end
