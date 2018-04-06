require 'midori'

class HelloWorldAPI < Midori::API
  get '/' do
    "Hello, world!"
  end
end

Midori::Configure.bind = "0.0.0.0"

runner = Midori::Runner.new(HelloWorldAPI)
runner.start
