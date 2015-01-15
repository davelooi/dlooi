DLooi::Application.routes.draw do

  get "payslips/index"
  get "payslips/import"
  devise_for :users
  authenticate :user do
    mount Upmin::Engine => '/admin'
  end
  root 'cheats#index'

  get 'food' => 'welcome#food'
  
  get 'admin' => 'admin'
  
  get 'about' => 'profiles#about'
  
  get 'cheats' => 'cheats#index'
  
  get 'words' => 'words#index'
  get 'words/getRandomWord' => 'words#getRandomWord'

  get 'games/hangman' => 'games#hangman'
  get 'games/2048' => 'games#game2048'
  get 'games/gol' => 'games#gamegol'

  resources :payslips do
    collection { post :import }
  end

  get 'payslips' => 'payslips#index'
  get 'clear_payslips' => 'payslips#destroy_all'
  
  get ':uid', to: 'profiles#show', as: :uid
end
