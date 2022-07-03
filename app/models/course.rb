class Course < ApplicationRecord
  validates_presence_of :name, :start_date, :end_date, :timezone, :description

end
