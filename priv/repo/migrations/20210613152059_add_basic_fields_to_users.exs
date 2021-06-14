defmodule Blog.Repo.Migrations.AddBasicFieldsToUsers do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :username, :string
      add :full_name, :string
      add :bio, :string
    end
  end
end
