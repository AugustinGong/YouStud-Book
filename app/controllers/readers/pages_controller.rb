module Readers
  class PagesController < ReadersController
    def index
      @books = Book.all
    end
  end
end
