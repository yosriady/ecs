# Entity Component Systems

```

ECS.Registry.start
bunny = ECS.Entity.build([TimeComponent.new(%{age: 0})])
TimeSystem.process
bunny = ECS.Entity.reload(bunny)
TimeSystem.process
bunny = ECS.Entity.reload(bunny)
bunny = ECS.Entity.add(bunny, TimeComponent.new(%{age: 10}))
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
