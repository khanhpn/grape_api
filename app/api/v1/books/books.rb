require 'pry'
module V1
  module Books
    class Books < Grape::API
      resource :book do
        desc 'List all books'
        paginate
        get serializer: Api::V1::BookSerializer do
          paginate Book.all
        end

        desc 'Get the specified area'
        params do
          requires :id, type: Integer
        end

        get ':id' do
          book_by_id(params[:id])
        end

        desc 'Create a new book'
        params do
          requires :isbn, type: String
          requires :title, type: String
          requires :stock, type: Integer
        end

        post do
          Book.create({isbn: params[:isbn], title: params[:title], stock: params[:stock]})
        end

        desc 'Update a book'
        params do
          requires :id, type: Integer
          requires :isbn, type: String
          requires :title, type: String
          requires :stock, type: Integer
        end

        put ':id' do
          book = book_by_id(params[:id])
          ApplicationRecord.transaction do
            book.update!({isbn: params[:isbn], title: params[:title], stock: params[:stock]})
            book
          end
        end
      end

      helpers do
        def book_by_id(id)
          book = Book.find_by(id: id)
        end
      end
    end
  end
end
