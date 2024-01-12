defmodule SlowGoingWeb.Api.FloatsTestController do
  use SlowGoingWeb, :controller

  alias SlowGoing.Platform
  alias SlowGoing.Platform.FloatsTest

  action_fallback SlowGoingWeb.FallbackController

  def index(conn, _params) do
    floats_test = Platform.list_floats_test()
    render(conn, :index, floats_test: floats_test)
  end

  def create(conn, %{"floats_test" => floats_test_params}) do
    with {:ok, %FloatsTest{} = floats_test} <- Platform.create_floats_test(floats_test_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", ~p"/api/floats_test/#{floats_test}")
      |> render(:show, floats_test: floats_test)
    end
  end

  def show(conn, %{"id" => id}) do
    floats_test = Platform.get_floats_test!(id)
    render(conn, :show, floats_test: floats_test)
  end

  def update(conn, %{"id" => id, "floats_test" => floats_test_params}) do
    floats_test = Platform.get_floats_test!(id)

    with {:ok, %FloatsTest{} = floats_test} <- Platform.update_floats_test(floats_test, floats_test_params) do
      render(conn, :show, floats_test: floats_test)
    end
  end

  def delete(conn, %{"id" => id}) do
    floats_test = Platform.get_floats_test!(id)

    with {:ok, %FloatsTest{}} <- Platform.delete_floats_test(floats_test) do
      send_resp(conn, :no_content, "")
    end
  end
end
