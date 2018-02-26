class Book < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :publisher, presence: true
  validates :level, presence: true
  validates :hands, presence: true
  validates :layout, presence: true
  validates :const, presence: true
  validates :page, presence: true

end
