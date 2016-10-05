get '/' do
  @suggestions = Suggestion.all

  erb :'suggestions/index'
end

get '/suggestions/new' do

  erb :'suggestions/new'
end

post '/suggestions' do
  @suggestion = Suggestion.new(params)

  @suggestions.save

  redirect '/'
end

get '/suggestions/:id' do
  @suggestion = Suggestion.find(params[:id])

  erb :'suggestions/show'
end

get '/suggestions/:id/edit' do
  @suggestion = Suggestion.find(params[:id])

  erb :'suggestions/edit'
end

put '/suggestions/:id' do
  @suggestion = Suggestion.find(params[:id])

  @suggestion.update(params[:suggestion])

  @suggestion.save

  redirect "/suggestions/#{@suggestion.id}"
end

delete '/suggestions/:id' do
  Suggestion.find(params[:id]).destroy

  redirect '/'
end
