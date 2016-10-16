{:ok, connection} = AMQP.Connection.open
{:ok, channel}    = AMQP.Channel.open(connection)

AMQP.Queue.declare(channel, "ex.task_queue", durable: true)

message = case System.argv do
            []    -> "Hello, World!"
            words -> Enum.join(words, " ")
          end

AMQP.Basic.publish(channel, "", "ex.task_queue", message, persistent: true)
IO.puts( " [x] Send '#{message}'")

AMQP.Connection.close(connection)
