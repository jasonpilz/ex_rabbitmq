# ExRabbitMQ

[RabbitMQ tutorial](https://www.rabbitmq.com/tutorials/tutorial-one-elixir.html) in elixir using amqp

###### Note:  Make sure to have rabbitmq installed and running locally:
```
brew install rabbitmq   # Install (OS X)
rabbitmq-server         # Run server
```

> If `rabbitmq-management` plugin is enabled, dashboard is available at `localhost:15672`

> Use `$ rabbitmqadmin list queues` for command-line convenience.

## Examples

To run the examples, use `mix run`.

#### Part 1 - Send/Receive from named queue

```
mix run lib/send.exs
mix run lib/receive.exs
```

#### Part 2 - Work queues

```
mix run lib/worker.exs
mix run lib/new_task.exs
```

#### Part 3 - Publish/Subscribe

```
mix run lib/receive_logs.exs > logs_from_rabbit.log
mix run lib/receive_logs.exs
mix run lib/emit_log.exs
```
