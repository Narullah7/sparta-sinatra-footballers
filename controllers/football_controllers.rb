class FootballControllers < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__),"..")
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  $photos = [{
	 id: 0,
	 title: "Ronaldo el phenomeno",
	 body: "Born on September 18, 1976, in Itaguaí, Brazil, Ronaldo established himself as an unstoppable scorer for European soccer teams in the mid-1990s. He bounced back from a disappointing finish to the 1998 World Cup and a series of knee injuries to lead Brazil to victory in the 2002 World Cup, and retired in 2011 as one of the game's all-time greats.",
   img: "http://inyarwanda.com/img/201509/logos/1442558788_ronaldo.jpg"
},
{
    id: 1,
    title: "Cristiano Ronaldo",
    body: "Born on February 5, 1985, Cristiano Ronaldo dos Santos Aveiro is a Portuguese soccer player with Manchester United. By 2003 — when he was just 16 years old — Manchester paid £12 million (over $14 million U.S. dollars) to sign him, a record fee for a player of his age. In the 2004 FA Cup final, Ronaldo scored Manchester's first three goals and helped them capture the championship. In 2008, he set a franchise record for goals scored. In 2009, Real Madrid paid a record $131 million for his services.",
    img: "https://www.diariogol.com/uploads/s1/52/44/81/3/20170926-636420589232313227_20170926214612-kR5C--980x554%40MundoDeportivo-Web_16_643x397.jpg"
},
{
    id: 2,
    title: "Lionel messi",
    body: "Luis Lionel Andres (“Leo”) Messi (b. June 24, 1987) is an Argentinian soccer player who plays forward for the FC Barcelona club and the Argentine national team. At the age of 13, Messi moved from Argentina to Spain after FC Barcelona agreed to pay for his medical treatments. There he became a star and led his club to championships. In 2012, he set a record for most goals in a calendar year, and in 2016, he was named Europe's Ballon d'Or winner for the fifth time.",
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
    id = params[:id].to_i
    @images = $photos[id]
    erb :'footballers/show'
  end




end
