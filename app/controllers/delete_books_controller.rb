class DeleteBooksController < ApplicationController
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to root_path
  end

  def delete
    @book = Book.find(params[:id])
  end
end
