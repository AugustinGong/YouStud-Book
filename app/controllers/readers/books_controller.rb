module Readers
    class BooksController < ReadersController
        def show
            @book = Book.find(params[:id])
        end
        
    end
end