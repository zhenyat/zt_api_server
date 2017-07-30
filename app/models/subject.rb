class Subject < ApplicationRecord
  belongs_to :category
  
  validates :name,     presence: true
  validates :title,    presence: true
  validates :abstract, presence: true
end
