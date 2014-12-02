class Movie < ActiveRecord::Base
    def flop?
        self.total_gross < 50000000 or self.total_gross.blank?
    end
end
