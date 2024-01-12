defmodule SlowGoing.Platform.FloatsTest do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "floats_test" do
    field :float_eight, :float
    field :float_five, :float
    field :float_four, :float
    field :float_nine, :float
    field :float_one, :float
    field :float_seven, :float
    field :float_six, :float
    field :float_three, :float
    field :float_two, :float
    field :int_one, :integer
    field :int_three, :integer
    field :int_two, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(floats_test, attrs) do
    floats_test
    |> cast(attrs, [:float_one, :float_two, :float_three, :float_four, :float_five, :float_six, :float_seven, :float_eight, :float_nine, :int_one, :int_two, :int_three])
    |> validate_required([:float_one, :float_two, :float_three, :float_four, :float_five, :float_six, :float_seven, :float_eight, :float_nine, :int_one, :int_two, :int_three])
  end
end
