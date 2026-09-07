class AddBooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      @book = Book.new
      render('new')
    end
  end

  private

  def book_params
    params.require(:book).permit(
      :title
    )
  end
end
