require 'sinatra'
require 'imdb'
require 'sinatra/reloader' if development?

require_relative 'lib/movie_filter'

get '/' do
    erb :home
end

get '/game' do
    @title = params[:title]

    search = Imdb::Search.new(@title)
    movie_filter = MovieFilter.new(search.movies)

    @results = search.movies.size
    @movies = movie_filter.filter(9)
    @correct = @movies.sample

    erb :game
end
