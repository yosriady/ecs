# A bunny prefab
defmodule Bunny do
  def new do
    ECS.Entity.build([TimeComponent.new(%{age: 0})])
  end
end
