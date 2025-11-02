defmodule ElixirLabWeb.PageControllerTest do
  use ElixirLabWeb.ConnCase

  test "GET /", %{conn: conn} do
    html_response = conn |> get(~p"/") |> html_response(200)

    assert html_response =~ "https://picsum.photos/400/400?random="
    assert html_response =~ "Random Vibes"
  end
end
