class Lead < ActiveRecord::Base
  belongs_to :landing_page

  before_save :scrub_fields

  def scrub_fields
    self.fields.gsub(/\\\//, "")
  end
end
