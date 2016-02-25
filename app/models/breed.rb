class Breed < ActiveRecord::Base

  has_many :puppy, class_name: "Puppy"

end
