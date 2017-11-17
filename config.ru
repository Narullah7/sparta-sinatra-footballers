require "sinatra"
require "sinatra/reloader" if development?
require_relative "./controllers/football_controllers.rb"

# The class I make in my football_controllers.rb file goes here
run FootballControllers
