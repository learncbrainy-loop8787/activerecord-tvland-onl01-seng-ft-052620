class Actor < ActiveRecord::Base
   has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    self.first_name + " " + last_name
  end
  def list_roles
  self.characters.c
  ollect do |character|
     self.character
  end
end
end