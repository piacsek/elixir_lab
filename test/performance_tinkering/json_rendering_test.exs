repetitions = System.get_env("EXUNIT_REPETITIONS", "1")

for i <- 1..String.to_integer(repetitions) do
  defmodule String.to_atom("ElixirLabWeb.JsonRenderingTest#{i}") do
    use ElixirLabWeb.ConnCase

    test "renders 500 #{i}" do
      assert ElixirLabWeb.ErrorJSON.render("500.json", %{}) ==
               %{errors: %{detail: "Internal Server Error"}}
    end
  end
end

# Results breakdown
# 1M tests: BEAM VM crash!
# 20k tests: Finished in 444.6 seconds (444.6s async, 0.00s sync)
# 20k tests: Finished in 486.1 seconds (486.1s async, 0.00s sync)

# 10k tests: Finished in 129.0 seconds (129.0s async, 0.00s sync)

# 5k tests: Finished in 44.1 seconds (44.1s async, 0.00s sync)

# 4k tests: Finished in 33.4 seconds (33.4s async, 0.00s sync)

# 2k tests: Finished in 13.1 seconds (13.1s async, 0.00s sync)

# 1k tests: Finished in 6.4 seconds (6.4s async, 0.00s sync)

# 200 tests: Finished in 1.6 seconds (1.6s async, 0.00s sync)

# 20 tests: Finished in 0.1 seconds (0.1s async, 0.00s sync)

# 2 tests: Finished in 0.04 seconds (0.04s async, 0.00s sync)

# 1 test: Finished in 0.04 seconds (0.04s async, 0.00s sync)
