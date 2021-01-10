require 'rack'

# Instances of Proc automatically have a call method that runs the block that they're initialized with.

my_server = Proc.new do
  [200, { 'Content-Type' => 'text/html' }, ['<em>You look super cool today! I have really come around on those jeans!</em>']]
end

run my_server 