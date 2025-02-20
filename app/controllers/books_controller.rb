

# what does this do?
# A simple logic for listing books in the library


class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  # Lists all books in the library.
  #
  # @return [Array<Book>] An array of all Book objects in the database.
  def index
    @books = Book.all
  end

  # Displays details of a specific book.
  #
  # @param id [Integer] The ID of the book to be shown.
  # @return [Book] The Book object corresponding to the given ID.
  def show
    @book = Book.find(params[:id])
  end
end
