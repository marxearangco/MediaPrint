Rails.application.routes.draw do
  
  resources :customers do 
  	resources :particulars do
  		resources :pictures
  	end
  end
  root 'customers#index'
end
