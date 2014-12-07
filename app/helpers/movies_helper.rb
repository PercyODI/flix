module MoviesHelper
    def format_total_gross(movie)
        if !movie.flop?
            "$" + number_to_human(movie.total_gross)
        else
            content_tag(:strong, "Flop!")
        end
    end
    
    def image_for(movie)
        if movie.image_file_name.blank?
            image_tag("http://a1.res.cloudinary.com/wlabs/image/asset/f_auto/placeholder-movie-f515675f5205c172cc9562cd133c6832.png", size:"100")
        else
            image_tag(movie.image_file_name)
        end
    end
end
