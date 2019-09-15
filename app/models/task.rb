class Task < ApplicationRecord
  belongs_to :project
  validates :name, presence: true, length: { maximum: 140 }
  validates :status, presence: true
end
