class Report < ApplicationRecord
  validates :date, :teacher, :target, :place, :body, presence: true
  
  belongs_to :user
end
