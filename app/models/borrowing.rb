class Borrowing < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :book, uniqueness: { scope: :user, message: "You already borrowed this book!" }
end
