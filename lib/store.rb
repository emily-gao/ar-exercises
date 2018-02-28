class MyValidator < ActiveModel::Validator
  def validate(record)
    if record.mens_apparel == false && record.womens_apparel == false
      record.errors.add(:apparel, 'the store must carry at least either mens or womens apparel')
    end
  end
end

class Store < ActiveRecord::Base
  include ActiveModel::Validations
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, bigger_than_or_equal_to: 0 }
  validates_with MyValidator

end