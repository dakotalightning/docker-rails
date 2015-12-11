class Page < ActiveRecord::Base

  validates :permalink, presence: true, uniqueness: true
  validates :title, presence: true, uniqueness: true

  before_validation :generate_permalink, on: :create

  # Generates and sets a `permalink` from the `title`.
  def generate_permalink
    if self.title.present? && self.permalink.blank?
      self.permalink = self.title.parameterize
    end
  end

end
