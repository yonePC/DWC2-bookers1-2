class BooksController < ApplicationController
  def index
    @books = Book.all
    @newbook = Book.new
  end

  def show
  end

  def create
    @newbook = Book.new(book_params)
    @newbook.save
    redirect_to books_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
