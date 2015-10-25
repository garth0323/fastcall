class LandingPage < ActiveRecord::Base
  belongs_to :business
  has_many :leads
end
