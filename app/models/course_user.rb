class CourseUser < ApplicationRecord
  belongs_to :course
  belongs_to :user

  delegate :first_name, :last_name, :email, to: :user

end
