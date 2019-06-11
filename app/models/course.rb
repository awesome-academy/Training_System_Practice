class Course < ApplicationRecord
  has_many :user_course, dependent: :destroy
  has_many :subjects, dependent: :destroy
  has_many :users, through: :user_course
end
