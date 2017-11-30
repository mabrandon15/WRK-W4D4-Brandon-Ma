class Album < ApplicationRecord
  validates :title, :year, :band_id, :version, presence: true
  
  belongs_to :band,
    class_name: :Band,
    foreign_key: :band_id
end
