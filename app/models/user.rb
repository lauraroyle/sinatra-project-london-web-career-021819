class User < ActiveRecord::Base

  has_many :visits
  has_many :restaurants, through: :visits
  
end
