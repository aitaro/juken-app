# coding: utf-8
class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    debugger
    if @book.save
      flash[:success] = "登録ありがとうございます。"
    else
      flash[:danger] = "登録が失敗しました。"
    end
    redirect_to root_url
  end

  private

    def book_params
      params.require(:book).permit(:name, :price, :publisher, :level,
                                   :hands, :layout, :const, :page)
    end
end
