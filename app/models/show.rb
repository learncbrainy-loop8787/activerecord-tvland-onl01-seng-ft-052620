class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters
  
  def community 
   self.create(:name => "Community", :day => "Thursday", :season => "Winter")
 end
end