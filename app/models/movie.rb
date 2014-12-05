class Movie < ActiveRecord::Base
    def flop?
        self.total_gross.blank? or self.total_gross < 50000000 
    end
    
    def self.released
        where("released_on < ?", Time.now).order("released_on desc")
    end
end
