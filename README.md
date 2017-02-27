# Entity Component System

```elixir

ECS.Registry.start

# Create an entity with a given collection of components.
bunny = ECS.Entity.build([TimeComponent.new(%{age: 0})])

# Each game turn, we may trigger a system to process and push some state updates to our components.
TimeSystem.process
TimeSystem.process

# Because Elixir is immutable, we need to pull the latest state.
bunny = ECS.Entity.reload(bunny)

# New components can be added at runtime, adding new behaviour to existing entities.
bunny = ECS.Entity.add(bunny, TimeComponent.new(%{age: 10}))

# State updates will also be pushed to components added at runtime.
TimeSystem.process
bunny = ECS.Entity.reload(bunny)

```

## Thanks

**ecs** © 2016+, Yos Riady. Released under the [MIT] License.<br>
Authored and maintained by Yos Riady with help from contributors ([list][contributors]).

> [yos.io](http://yos.io) &nbsp;&middot;&nbsp;
> GitHub [@yosriady](https://github.com/yosriady)

[MIT]: http://mit-license.org/
[contributors]: http://github.com/yosriady/ecs/contributors
