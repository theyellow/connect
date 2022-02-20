#!/bin/bash

# Start local leader
java -cp cr-connect-bot.jar discord4j.connect.ExampleSingleConnect &

# Start a local worker
java -cp cr-connect-bot.jar discord4j.connect.ExampleSingleWithConnection &

# Start another local worker
java -cp cr-connect-bot.jar discord4j.connect.ExampleSingleWithConnection &

# Wait for any process to exit
wait -n

# Exit with status of process that exited first
exit $?
