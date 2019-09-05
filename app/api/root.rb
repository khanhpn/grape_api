class Root < Grape::API
  use ActionDispatch::Session::CookieStore

  prefix :api
  format :json
  mount V1::Base
end
