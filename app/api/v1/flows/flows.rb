module V1
  module Flows
    class Flows < Grape::API
      resource :flow do
        desc 'List all flows'
        get do
          Flow.all
        end
      end
    end
  end
end
