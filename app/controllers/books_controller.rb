class BooksController < ApplicationController
  def index
    @books = Book.all
    @newbook = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @newbook = Book.new(book_params)
    if @newbook.save
      redirect_to book_path(@newbook), notice: "successfully"
    else
      @books = Book.all
      render :index
    end
  end

  def edit
    @editbook = Book.find(params[:id])
  end

  def update
    @editbook = Book.find(params[:id])
    if @editbook.update(book_params)
      redirect_to book_path(@editbook), notice: "successfully"
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
