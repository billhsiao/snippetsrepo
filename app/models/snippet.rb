class Snippet < ApplicationRecord
  belongs_to :user
  def self.search(search)
    if search
      self.where('name LIKE ?', ["%#{search}%"])
    else
      self.all
    end
  end
end
