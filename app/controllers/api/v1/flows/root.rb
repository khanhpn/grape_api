module Api
  module V1
    module Flows
      class Root < Grape::API
        extend ActiveSupport::Concern
        mount Api::V1::Flows::Flows
      end
    end
  end
end
