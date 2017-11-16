class FootballControllers < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__),"..")
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  $photos = [{
	 id: 0,
	 title: "Photo 1",
	 body: "This is the first post",
   img: "http://fillmurray.com/300/300"
},
{
    id: 1,
    title: "Photo 2",
    body: "This is the second post",
    img: "http://fillmurray.com/300/300"
},
{
    id: 2,
    title: "Photo 3",
    body: "This is the third post",
    img: "http://fillmurray.com/300/300"
}];

  get "/" do
    @title = "Homepage"
    erb :'footballers/home'
  end

  get "/photos" do
    @title = "Footballers page"
    @images = $photos
    erb :'footballers/index'
  end






end
