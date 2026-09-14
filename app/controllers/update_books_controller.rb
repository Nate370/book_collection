class UpdateBooksController < ApplicationController
  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if book_params[:title] == ''
      flash[:notice] = "Book must have a title"
      redirect_to edit_update_book_path; return
    end
    if @book.update(book_params)
      flash[:notice]= "Book updated successfully"
      redirect_to root_path #show_detail_path(@book)
    else
      render('edit')
    end
  end

  private

  def book_params
    params.require(:book).permit(
      :title
    )
  end
end
