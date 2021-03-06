defmodule AnimalSpotterApi.Animal do
  use AnimalSpotterApi.Web, :model

  schema "animals" do
    field :name, :string
    field :points, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :points])
    |> validate_required([:name, :points])
  end
end
