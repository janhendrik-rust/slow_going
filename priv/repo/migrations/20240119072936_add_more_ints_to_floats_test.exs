defmodule SlowGoing.Repo.Migrations.AddMoreIntsToFloatsTest do
  use Ecto.Migration

  def change do
    alter table(:floats_test, primary_key: false) do
      add :int_four, :integer
      add :int_five, :integer
      add :int_six, :integer
      add :int_seven, :integer
      add :int_eight, :integer
      add :int_nine, :integer
    end
  end
end
