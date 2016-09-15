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
