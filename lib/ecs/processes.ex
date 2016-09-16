# jeff = spawn(fn ->
#   receive do
#     {sender, message} -> IO.puts "Received '#{message}' from process #{inspect sender}"
#   end
# end)
#
# send jeff, {self(), "Hello world"}
