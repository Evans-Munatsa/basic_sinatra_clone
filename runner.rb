require "./mock_sinatra.rb"
class MyWebApp
  include MockSinatra
end

app = MyWebApp

app.get "/hi" do
  puts "l am the /hi method"
end

app.before "/hi" do
  puts "l am runningf before /hi"
  puts "-----------------------"
end

app.run("/hi")