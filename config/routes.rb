ThreddedResque::Engine.routes.draw do
  constraints CanAccessResque do
    mount Resque::Server, at: '/resque'
  end
end
