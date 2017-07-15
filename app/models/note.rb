class Note < ApplicationRecord
  validates :title, :notes, presence: true
  validates :title, length: { maximum: 100 }
end
