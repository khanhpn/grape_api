module V1
  module Flows
    class Root < Grape::API
      extend ActiveSupport::Concern
      mount V1::Flows::Flows
    end
  end
end
