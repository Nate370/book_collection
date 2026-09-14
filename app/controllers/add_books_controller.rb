class AddBooksController < ApplicationController
  def new
    @book = Book.new
    flash.keep
  end

  def create
    @book = Book.new(book_params)
    issue = false
    if (book_params[:title] == '' or book_params[:author] == '' or
      book_params[:price] == '' or book_params[:published_date] == '')
      issue = true
      flash[:empty] = "All Book attributes must be filled in"
    end
    if (book_params[:price] != '' and book_params[:price].to_f < 0)
      issue = true
      flash[:negative] = "Book price must not be negative"
    end
    if (issue)
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
      :title,
      :author,
      :price,
      :published_date
    )
  end
end
