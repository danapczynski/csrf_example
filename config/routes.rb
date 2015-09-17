Rails.application.routes.draw do
  root 'accounts#index'
  post 'transfer' => 'accounts#transfer'
end
