class Business < ActiveRecord::Base
  has_many :business_users
  has_many :users, through: :business_users
  has_many :contacts
  has_many :landing_pages
end
