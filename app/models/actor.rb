class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  #returns the actor's full name
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  #returns a list of roles for the actor using the character name and show name
  def list_roles
    self.characters.map do |character|
        "#{character.name} - #{character.show.name}"
    end
  end
end