defmodule AnimalSpotterApi.Repo.Migrations.CreateSpot do
  use Ecto.Migration

  def change do
    create table(:spots) do
      add :user_id, references(:users, on_delete: :nothing)
      add :animal_id, references(:animals, on_delete: :nothing)

      timestamps()
    end
    create index(:spots, [:user_id])
    create index(:spots, [:animal_id])

  end
end
