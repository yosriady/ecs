defmodule TimeSystem do
  @moduledoc """
    Increments ages of TimeComponents
  """

  def components do
    ECS.Registry.get(:"Elixir.TimeComponent")
  end

  def process do
    components()
      |> Enum.each(fn (pid) -> dispatch(pid, :increment) end)
  end

  # dispatch() is a pure reducer that takes in a state and an action and returns a new state
  def dispatch(pid, action) do
    %{id: _pid, state: state} = ECS.Component.get(pid)

    new_state = case action do
      :increment ->
        Map.put(state, :age, state.age + 1)
      :decrement ->
        Map.put(state, :age, state.age - 1)
      _ ->
        state
    end

    IO.puts("Updated #{inspect pid} to #{inspect new_state}")
    ECS.Component.update(pid, new_state)
  end
end
