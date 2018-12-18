class Classmate < ApplicationRecord
   has_one_attached :image
   validates :name, :presence => true
   validates :motto, :presence => true
   

end
