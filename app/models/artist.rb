class Artist < ApplicationRecord
  has_many :works

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :label, presence: true
  validates :country, presence: true

  scope :by_new, ->{ order(updated_at: :desc) }

  # before_save :capitalize_name
  #
  # # def capitalize_name
  # # 　self.name = self.name.capitalize
  # # end
end
