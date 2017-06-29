class Movie < ApplicationRecord
    has_many :reviews

    validates :title, :presence => true

    def getAverageRating
        ratingSum = 0
        self.reviews.each do |review|
            ratingSum += review.rating
        end
        return ratingSum / self.reviews.length
    end
end
