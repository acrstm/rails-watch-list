class Movie < ApplicationRecord
  validates :title, :overview, uniqueness: true, presence: true
  has_many :bookmarks
  # before_destroy :check_for_bookmarks


  # private

  # def check_for_bookmarks
  #   if bookmarks.any?
  #     erros.add(:base, 'cannot be deleted because it has bookmarks')
  #     throw(:abort)
  #   end
  # end
end
