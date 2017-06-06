class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate,
            presence: true,
            numericality: :only_integer,
            inclusion: { in: 40..200 }
validates_associated :store
end
