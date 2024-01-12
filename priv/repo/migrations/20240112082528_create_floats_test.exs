defmodule SlowGoing.Repo.Migrations.CreateFloatsTest do
  use Ecto.Migration

  def change do
    create table(:floats_test, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :float_one, :float
      add :float_two, :float
      add :float_three, :float
      add :float_four, :float
      add :float_five, :float
      add :float_six, :float
      add :float_seven, :float
      add :float_eight, :float
      add :float_nine, :float
      add :int_one, :integer
      add :int_two, :integer
      add :int_three, :integer

      timestamps(type: :utc_datetime)
    end
  end
end
