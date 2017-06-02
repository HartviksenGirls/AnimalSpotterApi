defmodule AnimalSpotterApi.Spot do
  use AnimalSpotterApi.Web, :model

  schema "spots" do
    belongs_to :user, AnimalSpotterApi.User
    belongs_to :animal, AnimalSpotterApi.Animal

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [])
    |> validate_required([])
  end
end
