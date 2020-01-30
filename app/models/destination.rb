class Destination < ApplicationRecord
  scope :most_reviews, -> {(
  select("products.id, products.name, products.cost, count(reviews.id) as number_of_reviews")
  .joins(:reviews)
  .group("products.id")
  .order("number_of_reviews DESC")
  .limit(1)
  )}
end
