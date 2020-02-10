class Show < ActiveRecord::Base

    def self.highest_rating
        self.all.order(rating: :desc)[0].rating
    end

    def self.most_popular_show
        self.all.order(rating: :desc)[0]
    end

    def self.lowest_rating
        self.all.order(rating: :asc)[0].rating
    end

    def self.least_popular_show
        self.all.order(rating: :asc)[0]
    end

    def self.ratings_sum
        self.sum(:rating)
    end

    def self.popular_shows
        self.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        self.order(name: :asc)
    end
end