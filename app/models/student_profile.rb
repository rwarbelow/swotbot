class StudentProfile < ActiveRecord::Base
  # Remember to create a migration!
	belongs_to :student_role
  has_many :student_guardian_relationships
  has_many :parent_profiles, through: :student_guardian_relationships
end
