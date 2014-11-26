Rails.application.routes.draw do
  scope '(/:locale)' do
    resources :todos
  end
end
