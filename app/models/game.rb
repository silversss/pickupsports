class Game < ActiveRecord::Base
  attr_accessible :address, :gmaps, :latitude, :longitude, :name, :private, :sport, :status, :time, :admin, :members


  has_many :admin , :class_name => "User", :foreign_key => "admin_id"
  has_many :members , :class_name => "User", :foreign_key => "member_id"
  belongs_to :user

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  
  acts_as_gmappable :process_geocoding => false
  attr_accessor :the_user


  def gmaps4rails_address
    "#{self.street}, #{self.city}, #{self.country}"
  end



end
