Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'issues#home' # root page

  # Issue Paths
  get 'showIssue' => 'issues#show', as: :showIssue
  get 'indexIssue' => 'issues#index', as: :indexIssue
  get 'addIssue' => 'issues#new', as: :addIssue 
  post 'addIssue' => 'issues#create', as: :createIssue 
  get 'editIssue' => 'issues#edit', as: :editIssue 
  post 'issues/destroy/(:id)' => 'issues#destroy', as: :deleteIssue 
  post 'issues/update/(:id)' => 'issues#update', as: :updateIssue #display create user page

  # resources: <model name>   
  # sample route = get 'signup' => 'users#new', as: :signup #display create user page
  match '/:controller/:action/(:id)', via: [:get, :post] # last route
resources :issues
end
