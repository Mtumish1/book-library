
class Book < ApplicationRecord
  has_many :borrowings
  validates :title, :author, :isbn, presence: true
  validates :isbn, uniqueness: true

  # Checks if the book is currently available for borrowing.
  #
  # This method determines whether the book is available by checking
  # if there are any active borrowings (i.e., borrowings where the
  # returned_at field is nil).
  #
  # @return [Boolean] true if the book is available, false otherwise
  def available?
    !borrowings.where(returned_at: nil).exists?
  end
end
  