class Track < ActiveRecord
  TRACK_TYPES = %w(Regular Bonus)

  validates :name, :album_id, :track_type, presence: true
  validates :track_type, inclusion: { in: TRACK_TYPES }

  belongs_to :album
end
