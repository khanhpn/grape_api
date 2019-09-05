module Api
  module V1
    module Books
      class Root < Grape::API
        extend ActiveSupport::Concern
        mount Api::V1::Books::Books
      end
    end
  end
end
