module Api
  class Root < Grape::API
    use ActionDispatch::Session::CookieStore

    prefix :api
    format :json
    mount Api::V1::Base
  end
end
