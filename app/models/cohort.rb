class Cohort < ApplicationRecord
  has_one :instructor
  has_one :course
  has_many :students
end
