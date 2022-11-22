class BooksController < ApplicationController

  def create
    @user = current_user
          @book = book.new(book_params)
    @book.user_id = (current_user.id)
    if @book.save
    end
  end
  
  

  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def show
  end

  def edit
  end
end
