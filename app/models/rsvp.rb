class Rsvp < ApplicationRecord
  CATEGORIES = ["16th of July: Ceremony and Party", "17th of July: Brunch", "Both Brunch & Party", "Unable to Attend Either Event"]
  validates :guestonefirst, :guestonelast, presence: :true
end
