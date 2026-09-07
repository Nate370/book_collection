class UpdateBooksController < ApplicationController
  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to show_detail_path(@book)
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
