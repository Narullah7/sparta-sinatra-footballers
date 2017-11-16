class FootballControllers < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__),"..")
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end



  get "/" do
    @title = "Homepage"
    erb :'footballers/home'
  end






end
