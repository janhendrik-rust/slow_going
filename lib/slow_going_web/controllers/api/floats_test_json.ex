defmodule SlowGoingWeb.Api.FloatsTestJSON do
  alias SlowGoing.Platform.FloatsTest

  @doc """
  Renders a list of floats_test.
  """
  def index(%{floats_test: floats_test}) do
    %{data: for(floats_test <- floats_test, do: data(floats_test))}
  end

  @doc """
  Renders a single floats_test.
  """
  def show(%{floats_test: floats_test}) do
    %{data: data(floats_test)}
  end

  defp data(%FloatsTest{} = floats_test) do
    %{
      id: floats_test.id,
      float_one: floats_test.float_one,
      float_two: floats_test.float_two,
      float_three: floats_test.float_three,
      float_four: floats_test.float_four,
      float_five: floats_test.float_five,
      float_six: floats_test.float_six,
      float_seven: floats_test.float_seven,
      float_eight: floats_test.float_eight,
      float_nine: floats_test.float_nine,
      int_one: floats_test.int_one,
      int_two: floats_test.int_two,
      int_three: floats_test.int_three
    }
  end
end
