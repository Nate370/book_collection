class AddBooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if book_params[:title] == ''
      flash[:notice] = "Book must have a title"
      redirect_to new_add_book_path; return
    end
    if @book.save
      flash[:notice] = "Book added successfully"
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
