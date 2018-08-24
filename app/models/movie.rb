class Movie < ActiveRecord::Base
     #attr_accessible :title, :rating, :description, :release_date ==> No se usa en Rails 5
     
  def self.ratings
    ['G', 'PG', 'PG-13', 'R']
  end
end