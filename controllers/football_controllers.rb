class FootballControllers < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__),"..")
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  $photos = [{
	 id: 0,
	 title: "Ronaldo el phenomeno",
	 body: "Basic Description",
   img: "http://inyarwanda.com/img/201509/logos/1442558788_ronaldo.jpg"
},
{
    id: 1,
    title: "Cristiano Ronaldo",
    body: "Basic Description",
    img: "https://www.diariogol.com/uploads/s1/52/44/81/3/20170926-636420589232313227_20170926214612-kR5C--980x554%40MundoDeportivo-Web_16_643x397.jpg"
},
{
    id: 2,
    title: "Lionel messi",
    body: "Basic Description",
    img: "https://cdn.images.express.co.uk/img/dynamic/67/590x/Lionel-Messi-782258.jpg"
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

  get "/photos/:id" do
    @title = "Footballer bio"
    id =params[:id].to_i
    @images = $images
    erb :'footballers/show'
  end




end
