class Profile < ActiveRecord::Base
  attr_accessible :address, :name, :user_id, :user_name
end
