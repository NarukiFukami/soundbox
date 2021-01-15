class Work < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :release, presence: true
  validates :song, presence: true
  validates :description, presence: true

  scope :by_new, ->{ order(updated_at: :desc) }

  # before_save :capitalize_name
  #
  # def capitalize_name
  # 　self.name = self.name.capitalize
  # end

end
