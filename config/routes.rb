DLooi::Application.routes.draw do

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
  
  get ':uid', to: 'profiles#show', as: :uid
end
