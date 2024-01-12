defmodule SlowGoing.PlatformFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `SlowGoing.Platform` context.
  """

  @doc """
  Generate a floats_test.
  """
  def floats_test_fixture(attrs \\ %{}) do
    {:ok, floats_test} =
      attrs
      |> Enum.into(%{
        float_eight: 120.5,
        float_five: 120.5,
        float_four: 120.5,
        float_nine: 120.5,
        float_one: 120.5,
        float_seven: 120.5,
        float_six: 120.5,
        float_three: 120.5,
        float_two: 120.5,
        int_one: 42,
        int_three: 42,
        int_two: 42
      })
      |> SlowGoing.Platform.create_floats_test()

    floats_test
  end
end
