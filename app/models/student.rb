class Student < ActiveRecord::Base
  has_many :student_courses
  has_many :courses, through: :student_courses


  validates_presence_of :name, :email, :major
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
