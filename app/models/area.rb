class Area < ActiveRecord::Base
  belongs_to :country
  has_many :tours, dependent: :destroy
end
