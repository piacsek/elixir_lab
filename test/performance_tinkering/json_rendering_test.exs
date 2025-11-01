for i <- 1..1 do
  defmodule String.to_atom("ElixirLabWeb.JsonRenderingTest#{i}") do
    use ElixirLabWeb.ConnCase

    test "renders 500 #{i}" do
      assert ElixirLabWeb.ErrorJSON.render("500.json", %{}) ==
               %{errors: %{detail: "Internal Server Error"}}
    end
  end
end

# Results breakdown
# 20k tests: Finished in 444.6 seconds (444.6s async, 0.00s sync)
# 2k tests: Finished in 13.1 seconds (13.1s async, 0.00s sync)
# 200 tests: Finished in 1.6 seconds (1.6s async, 0.00s sync)
# 20 tests: Finished in 0.1 seconds (0.1s async, 0.00s sync)
# 2 tests: Finished in 0.04 seconds (0.04s async, 0.00s sync)
# 1 test: Finished in 0.04 seconds (0.04s async, 0.00s sync)
