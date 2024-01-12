defmodule SlowGoingWeb.Api.FloatsTestControllerTest do
  use SlowGoingWeb.ConnCase

  import SlowGoing.PlatformFixtures

  alias SlowGoing.Platform.FloatsTest

  @create_attrs %{
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
  }
  @update_attrs %{
    float_eight: 456.7,
    float_five: 456.7,
    float_four: 456.7,
    float_nine: 456.7,
    float_one: 456.7,
    float_seven: 456.7,
    float_six: 456.7,
    float_three: 456.7,
    float_two: 456.7,
    int_one: 43,
    int_three: 43,
    int_two: 43
  }
  @invalid_attrs %{float_eight: nil, float_five: nil, float_four: nil, float_nine: nil, float_one: nil, float_seven: nil, float_six: nil, float_three: nil, float_two: nil, int_one: nil, int_three: nil, int_two: nil}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all floats_test", %{conn: conn} do
      conn = get(conn, ~p"/api/floats_test")
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create floats_test" do
    test "renders floats_test when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/api/floats_test", floats_test: @create_attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, ~p"/api/floats_test/#{id}")

      assert %{
               "id" => ^id,
               "float_eight" => 120.5,
               "float_five" => 120.5,
               "float_four" => 120.5,
               "float_nine" => 120.5,
               "float_one" => 120.5,
               "float_seven" => 120.5,
               "float_six" => 120.5,
               "float_three" => 120.5,
               "float_two" => 120.5,
               "int_one" => 42,
               "int_three" => 42,
               "int_two" => 42
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, ~p"/api/floats_test", floats_test: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update floats_test" do
    setup [:create_floats_test]

    test "renders floats_test when data is valid", %{conn: conn, floats_test: %FloatsTest{id: id} = floats_test} do
      conn = put(conn, ~p"/api/floats_test/#{floats_test}", floats_test: @update_attrs)
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, ~p"/api/floats_test/#{id}")

      assert %{
               "id" => ^id,
               "float_eight" => 456.7,
               "float_five" => 456.7,
               "float_four" => 456.7,
               "float_nine" => 456.7,
               "float_one" => 456.7,
               "float_seven" => 456.7,
               "float_six" => 456.7,
               "float_three" => 456.7,
               "float_two" => 456.7,
               "int_one" => 43,
               "int_three" => 43,
               "int_two" => 43
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, floats_test: floats_test} do
      conn = put(conn, ~p"/api/floats_test/#{floats_test}", floats_test: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete floats_test" do
    setup [:create_floats_test]

    test "deletes chosen floats_test", %{conn: conn, floats_test: floats_test} do
      conn = delete(conn, ~p"/api/floats_test/#{floats_test}")
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, ~p"/api/floats_test/#{floats_test}")
      end
    end
  end

  defp create_floats_test(_) do
    floats_test = floats_test_fixture()
    %{floats_test: floats_test}
  end
end
