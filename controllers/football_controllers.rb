class FootballControllers < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__),"..")
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  $images = [{
    




    }]

  get "/" do
    @title = "Homepage"
    erb :'footballers/home'
  end

  get "/photos" do
    @title = "Footballers page"
    erb :'footballers/show'
  end






end
