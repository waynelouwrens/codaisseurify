class Song < ApplicationRecord
  belongs_to :artist

  validates :name, presence: true
  validates :album, presence: true
  validates :year, presence: true, length: { maximum:4 }

end
