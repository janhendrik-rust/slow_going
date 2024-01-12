defmodule SlowGoing.Platform do
  @moduledoc """
  The Platform context.
  """

  import Ecto.Query, warn: false
  alias SlowGoing.Repo

  alias SlowGoing.Platform.FloatsTest

  @doc """
  Returns the list of floats_test.

  ## Examples

      iex> list_floats_test()
      [%FloatsTest{}, ...]

  """
  def list_floats_test do
    Repo.all(FloatsTest)
  end

  @doc """
  Gets a single floats_test.

  Raises `Ecto.NoResultsError` if the Floats test does not exist.

  ## Examples

      iex> get_floats_test!(123)
      %FloatsTest{}

      iex> get_floats_test!(456)
      ** (Ecto.NoResultsError)

  """
  def get_floats_test!(id), do: Repo.get!(FloatsTest, id)

  @doc """
  Creates a floats_test.

  ## Examples

      iex> create_floats_test(%{field: value})
      {:ok, %FloatsTest{}}

      iex> create_floats_test(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_floats_test(attrs \\ %{}) do
    %FloatsTest{}
    |> FloatsTest.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a floats_test.

  ## Examples

      iex> update_floats_test(floats_test, %{field: new_value})
      {:ok, %FloatsTest{}}

      iex> update_floats_test(floats_test, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_floats_test(%FloatsTest{} = floats_test, attrs) do
    floats_test
    |> FloatsTest.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a floats_test.

  ## Examples

      iex> delete_floats_test(floats_test)
      {:ok, %FloatsTest{}}

      iex> delete_floats_test(floats_test)
      {:error, %Ecto.Changeset{}}

  """
  def delete_floats_test(%FloatsTest{} = floats_test) do
    Repo.delete(floats_test)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking floats_test changes.

  ## Examples

      iex> change_floats_test(floats_test)
      %Ecto.Changeset{data: %FloatsTest{}}

  """
  def change_floats_test(%FloatsTest{} = floats_test, attrs \\ %{}) do
    FloatsTest.changeset(floats_test, attrs)
  end
end
