require 'ostruct'
require 'imdb'

require_relative '../lib/movie_filter'

RSpec.describe 'MovieFilter' do
    let(:filtered) do
        no_poster = OpenStruct.new
        poster = OpenStruct.new
        poster.poster = 'http://example.com'

        movies = [ no_poster, no_poster ]
        (1..20).each do
            movies.push(poster)
        end

        movie_filter = MovieFilter.new(movies)
        movie_filter.filter(10)
    end

    it 'returns the correct amount of movies' do
        expect(filtered.size).to eq(10)
    end

    it 'removes movies without posters' do
        filtered.each do |movie|
            expect(movie.poster).not_to be_nil
        end
    end
end
