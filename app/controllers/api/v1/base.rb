module Api
  module V1
    class Base < Grape::API
      extend ActiveSupport::Concern

      version 'v1', using: :path

      helpers do
        def response_error!(message, status = 400)
          error!({ error: message }, status)
        end
      end

      rescue_from Grape::Exceptions::ValidationErrors do |e|
        response_error!(e.message)
      end

      rescue_from ActiveRecord::RecordNotFound do |e|
        response_error!(e.message, 404)
      end

      rescue_from :all do |e|
        response_error!(e.message, 500)
      end

      mount Api::V1::Books::Root
      mount Api::V1::Flows::Root
    end
  end
end
