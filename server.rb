require 'sinatra'

get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills= ['git', 'github', 'html', 'css', 'ruby', 'sql','javascript']
  @interests = ['reading', 'writing', 'learning', 'dancing', 'working out', 'hiking', 'adventure', 'programming']
  erb :about_me

end

get '/favorites' do

@fav_links = ["http://radio.garden/", "https://www.google.ca/maps", "http://cogsys.ubc.ca/", "https://www.utoronto.ca/", "http://www.hillarycoe.com/" ]

erb :favorites
end


get '/' do

redirect to('/home')

end

get '/gallery' do
  redirect to('/portfolio')

end
