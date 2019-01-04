class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end
  def self.most_popular_show
    Show.highest_rating.title
  end
  def self.lowest_rating
    Show.minumum(:rating)
  end
  def self.least_popular_show
    Show.lowest_rating.title
  end
  def self.rating_sum
    Show.sum(:rating)
  end
  def self.popular_shows
    Show.where (:rating > 5)
  end
  def shows_by_alphabetical_order
    Show.where(:title DESC)
  end
end