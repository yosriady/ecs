# A bunny prefab
defmodule Bunny do
  def build do
    ECS.Entity.build([TimeComponent])
  end
end
