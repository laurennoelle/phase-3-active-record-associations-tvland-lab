class Show < ActiveRecord::Base
    #returns the characters associated with the show
    # can be used to build its characters
  has_many :characters
  has_many :actors, through: :characters
  #returns the network that the show belongs to
  belongs_to :network

  #Define a method in the Show class called #actors_list that returns an Array of the full names of each actor associated with a show. Remember, a show should have many actors through characters. Hint: it may help to use another association macro to access the actors for the show.
  def actors_list
    self.actors.map do |actor|
        actor.full_name
    end
  end
end