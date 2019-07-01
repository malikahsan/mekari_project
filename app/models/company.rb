class Company < ApplicationRecord
  has_many :employees, dependent: :destroy
  has_many :policies, dependent: :destroy

  validates :name, presence: true

  def company_name
    return "#{name.titleize}"
  end
end
