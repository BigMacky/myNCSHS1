class Student < ActiveRecord::Base
	validates :student_lrn, uniqueness: true
	validates :student_lrn, :first_name, :last_name, :middle_name, :age, :birthdate, :religion, presence: true
end
