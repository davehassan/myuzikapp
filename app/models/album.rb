class Album < ActiveRecord::Base
  RECORDED = %w(Live, Studio)

  validates :name, :band_id, :recorded, presence: true
  validates :recorded, inclusion: { in: RECORDED }

  belongs_to :band
  has_many :tracks, dependent: :destroy
end
