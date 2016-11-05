Rails.application.routes.draw do
  resources :infos, only: [:index, :show, :destroy]

  resources :units, except: [:new, :edit], shallow:true do
    resources :infos, only: [:create]
  end

  resources :buildings, except: [:new, :edit], shallow:true do
    resources :infos, only: [:create]
  end

  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
