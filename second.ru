require 'rack'

# Something that responds to call, that's what Rack demands
class MyServer
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
  end

  def pretty_response
    (Time.now.to_i % 2).zero? ?  ["<em>I am so happy!</em>"] : ["<strong>I am less happy-- maybe even sad!</strong>"]
  end
end

run MyServer.new 