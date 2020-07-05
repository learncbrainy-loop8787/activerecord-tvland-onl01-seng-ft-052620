class Actor < ActiveRecord::Base
   has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    self.first_name + " " + last_name
  end
  def list_roles
  self.characters.collect do |character, name|
     character.name + " - " + character.show.name
  end
end
def self.say_that_thing_you_say
  self.catchphrase
end
end