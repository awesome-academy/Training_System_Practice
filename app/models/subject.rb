class Subject < ApplicationRecord
  belongs_to :course
  has_many :tasks ,dependent: :destroy
end
