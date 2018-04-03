# hello_midori.rb
require 'midori'

class HelloWorldAPI < Midori::API
  get '/' do
    "Hello, world!"
  end
end

runner = Midori::Runner.new(HelloWorldAPI)

Thread.new do
  runner.start
end

gets
runner.stop
