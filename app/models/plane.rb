class Plane < ApplicationRecord
  validates :name, presence: true
  validates :manufactor, presence: true
  validates :aircraft_type, presence: true,
    inclusion: { in: %w(Super Heavy Medium Light) }
  validates :range, inclusion: { in: 1..20000 }
  validates :passengers, presence: true
  validates :engines, inclusion: { in: 1..4 }
end
