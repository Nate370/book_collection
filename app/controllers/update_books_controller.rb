class UpdateBooksController < ApplicationController
  def edit
    @book = Book.find(params[:id])
    flash.keep
  end

  def update
    @book = Book.find(params[:id])
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
      redirect_to new_update_book_path; return
    end
    if @book.update(book_params)
      flash[:notice]= "Book updated successfully"
      redirect_to root_path
    else
      render('edit')
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
