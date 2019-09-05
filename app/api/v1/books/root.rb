module V1
  module Books
    class Root < Grape::API
      extend ActiveSupport::Concern
      mount V1::Books::Books
    end
  end
end
