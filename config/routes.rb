DfScenario::Application.routes.draw do

  root "scenario#index"

  get "game/:game_name", to: "scenario#show", as: 'generator'
  get 'game/:game_name/accept', to: 'scenario#accept', as: 'accept'
  get 'game/:game_name/reroll', to: 'scenario#reroll'
  get 'game/:game_name/reroll/column', to: 'scenario#reroll_column'
  get 'random', to: 'scenario#random', as: 'random_generator'

  post 'game/:game_name/save', to: 'scenario#save', as: 'scenario_save'
  get 'game/:game_name/scenario/:uuid', to: 'scenario#load', as: 'scenario_load'

  post 'suggestion/:page_name', to: 'suggestion#submit', as: 'suggestion_submit'

  post 'stat', to: 'stat#stat', as: 'record_stat'

  get 'donators', to: 'donator#index', as: 'donator_index'
  get 'faq', to: 'static#faq', as: 'faq'

end
