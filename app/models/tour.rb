class Tour < ActiveRecord::Base
  belongs_to :area
  validates :title, presence: true
  validates :area_id, presence: true
  validates :number_of_people, presence: true
  validates :meeting_place, presence: true
  validates :price, presence: true
  validates :time, presence: true
end
