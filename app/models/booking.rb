class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :start_at, presence: true
  validates :ends_at, presence: true
end
