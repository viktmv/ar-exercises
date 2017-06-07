class Store < ActiveRecord::Base
  has_many :employees

  validate :carries_something?

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def carries_something?
    unless (mens_apparel.present? || womens_apparel.present?)
      errors.add(:base, "Shoud carry at least one type of apparel")
    end
  end

  before_destroy :no_employees_validation

  private

  def no_employees_validation
    throw :abort if employees.count > 1
  end
end
