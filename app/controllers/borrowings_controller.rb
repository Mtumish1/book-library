

# Still crying but learning ('_')

class BorrowingsController < ApplicationController
  before_action :authenticate_user!

  def create
    book = Book.find(params[:book_id])

    if book.available
      borrowing = current_user.borrowings.create!(
        book: book,
        borrowed_at: Time.current,
        due_date: 2.weeks.from_now
      )
      book.update(available: false)
      redirect_to book_path(book), notice: "You have borrowed this book."
    else
      redirect_to book_path(book), alert: "This book is already borrowed."
    end
  end

  def return_book
    borrowing = current_user.borrowings.find_by(book_id: params[:book_id], returned_at: nil)

    if borrowing
      borrowing.update(returned_at: Time.current)
      borrowing.book.update(available: true)
      redirect_to borrowings_path, notice: "Book returned successfully."
    else
      redirect_to borrowings_path, alert: "You haven't borrowed this book."
    end
  end

  def index
    @borrowings = current_user.borrowings.includes(:book)
    @borrowings = current_user.borrowings.where(returned_at: nil)
  end
end
