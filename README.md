# ExRabbitMQ

[RabbitMQ tutorial](https://www.rabbitmq.com/tutorials/tutorial-one-elixir.html) in elixir using amqp

###### Note:  Make sure to have rabbitmq installed and running locally:
```
brew install rabbitmq   # Install (OS X)
rabbitmq-server         # Run server
```
If `rabbitmq-management` plugin is enabled, dashboard is available at `localhost:15672`

Use `$ rabbitmqadmin list queues` for command-line convenience.

## Examples

To run the examples, use `mix run`.

#### Part 1 - Send/Receive from named queue

```
mix run lib/send.exs
mix run lib/receive.exs
```
