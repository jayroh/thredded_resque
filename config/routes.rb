Thredded::Application.routes.prepend do
  constraints CanAccessResque do
    mount Resque::Server, at: '/resque'
  end
end
