class Movie < ActiveRecord::Base

  def self.with_ratings(ratings_list)
  # if ratings_list is an array such as ['G', 'PG', 'R'], retrieve all
    #Movie.select(:rating).distinct
    

  # if ratings_list is nil, retrieve ALL movies
    if ratings_list == nil or ratings_list.length == 0
        Movie.all
    else
        Movie.where(rating: ratings_list)
    end
    
  end
  
  def self.all_ratings
      #enum all_ratings = ['G','PG','PG-13','R']
      Movie.distinct.pluck(:rating) #from ques: it's best if the controller sets this variable by consulting the Model
      # or using emum
  end
  
end
