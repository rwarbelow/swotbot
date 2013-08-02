class Course < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :teacher, class_name: "User"
  has_many :students, through: :courses, source: :user
end
