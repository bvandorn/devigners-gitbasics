class Puppy < ActiveRecord::Base

  validates :image, presence: true, length: {minimum: 1}


end
