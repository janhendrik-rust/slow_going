defmodule SlowGoing.PlatformTest do
  use SlowGoing.DataCase

  alias SlowGoing.Platform

  describe "floats_test" do
    alias SlowGoing.Platform.FloatsTest

    import SlowGoing.PlatformFixtures

    @invalid_attrs %{float_eight: nil, float_five: nil, float_four: nil, float_nine: nil, float_one: nil, float_seven: nil, float_six: nil, float_three: nil, float_two: nil, int_one: nil, int_three: nil, int_two: nil}

    test "list_floats_test/0 returns all floats_test" do
      floats_test = floats_test_fixture()
      assert Platform.list_floats_test() == [floats_test]
    end

    test "get_floats_test!/1 returns the floats_test with given id" do
      floats_test = floats_test_fixture()
      assert Platform.get_floats_test!(floats_test.id) == floats_test
    end

    test "create_floats_test/1 with valid data creates a floats_test" do
      valid_attrs = %{float_eight: 120.5, float_five: 120.5, float_four: 120.5, float_nine: 120.5, float_one: 120.5, float_seven: 120.5, float_six: 120.5, float_three: 120.5, float_two: 120.5, int_one: 42, int_three: 42, int_two: 42}

      assert {:ok, %FloatsTest{} = floats_test} = Platform.create_floats_test(valid_attrs)
      assert floats_test.float_eight == 120.5
      assert floats_test.float_five == 120.5
      assert floats_test.float_four == 120.5
      assert floats_test.float_nine == 120.5
      assert floats_test.float_one == 120.5
      assert floats_test.float_seven == 120.5
      assert floats_test.float_six == 120.5
      assert floats_test.float_three == 120.5
      assert floats_test.float_two == 120.5
      assert floats_test.int_one == 42
      assert floats_test.int_three == 42
      assert floats_test.int_two == 42
    end

    test "create_floats_test/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Platform.create_floats_test(@invalid_attrs)
    end

    test "update_floats_test/2 with valid data updates the floats_test" do
      floats_test = floats_test_fixture()
      update_attrs = %{float_eight: 456.7, float_five: 456.7, float_four: 456.7, float_nine: 456.7, float_one: 456.7, float_seven: 456.7, float_six: 456.7, float_three: 456.7, float_two: 456.7, int_one: 43, int_three: 43, int_two: 43}

      assert {:ok, %FloatsTest{} = floats_test} = Platform.update_floats_test(floats_test, update_attrs)
      assert floats_test.float_eight == 456.7
      assert floats_test.float_five == 456.7
      assert floats_test.float_four == 456.7
      assert floats_test.float_nine == 456.7
      assert floats_test.float_one == 456.7
      assert floats_test.float_seven == 456.7
      assert floats_test.float_six == 456.7
      assert floats_test.float_three == 456.7
      assert floats_test.float_two == 456.7
      assert floats_test.int_one == 43
      assert floats_test.int_three == 43
      assert floats_test.int_two == 43
    end

    test "update_floats_test/2 with invalid data returns error changeset" do
      floats_test = floats_test_fixture()
      assert {:error, %Ecto.Changeset{}} = Platform.update_floats_test(floats_test, @invalid_attrs)
      assert floats_test == Platform.get_floats_test!(floats_test.id)
    end

    test "delete_floats_test/1 deletes the floats_test" do
      floats_test = floats_test_fixture()
      assert {:ok, %FloatsTest{}} = Platform.delete_floats_test(floats_test)
      assert_raise Ecto.NoResultsError, fn -> Platform.get_floats_test!(floats_test.id) end
    end

    test "change_floats_test/1 returns a floats_test changeset" do
      floats_test = floats_test_fixture()
      assert %Ecto.Changeset{} = Platform.change_floats_test(floats_test)
    end
  end
end
