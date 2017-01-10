Rails.application.routes.draw do
  root "designs#index"
  resources :designs
  resources :particulars
end
