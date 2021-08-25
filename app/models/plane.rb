class Plane < ApplicationRecord
  validates :name, presence: true
  validates :manufactor, presence: true
  validates :type, presence: true, inclusion: { in: %w(Super Heavy Medium Light) }
  validates :range, presence: true, inclusion: { in: 1..20000 }
  validates :passenger, presence: true
  validates :engines, presence: true, inclusion: { in: 1..4 }
end
