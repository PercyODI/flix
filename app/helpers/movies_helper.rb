module MoviesHelper
    def format_total_gross(movie)
        if !movie.flop?
            "$" + number_to_human(movie.total_gross)
        else
            content_tag(:strong, "Flop!")
        end
    end
end
