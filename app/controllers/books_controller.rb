class BooksController < ApplicationController
  
   def index
       @books=Book.all
  end
  
  def create 
    book=Book.index(book_params)
    book.save
    redirect_to'/show'
  end 

  def show
  end

  def edit
  end

private
 def book_params
  params.require(:book).permit(:title, :body)
 end 
end 


