class MovieFilter
    def initialize(movies)
        @movies = movies
    end

    def filter(amount)
        filtered = []
        checked = 0

        until filtered.size == amount || checked == @movies.size
            movie = @movies[checked]
            unless movie.poster.nil?
                filtered.push(movie) 
            end
            checked += 1
        end

        return filtered
    end
end
