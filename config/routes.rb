Thredded::Application.routes.prepend do
  mount Resque::Server, at: '/resque'
end
