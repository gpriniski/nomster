class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, uniqueness: true, length: { :within => 3..30 }
  validates :address, presence: true, length: { :within => 3..100 }
  validates :description, presence: true, length: { :within => 3..500 }


end

 #class Film <; ActiveRecord::Base
  #validates :title, :presence => true, :uniqueness => true, :length => { :maximum => 100 }
  #validates :budget, :presence => true, :length => { :within => 1..10000000 }
#end