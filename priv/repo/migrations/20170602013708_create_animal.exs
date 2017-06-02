defmodule AnimalSpotterApi.Repo.Migrations.CreateAnimal do
  use Ecto.Migration

  def change do
    create table(:animals) do
      add :name, :string
      add :points, :integer

      timestamps()
    end

  end
end
