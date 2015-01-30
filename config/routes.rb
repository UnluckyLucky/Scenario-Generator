DfScenario::Application.routes.draw do
  
  root "scenario#index"

  get "game/:game", to: "scenario#show", as: 'generator'
  get 'game/:game/accept', to: 'scenario#accept', as: 'accept'
  get 'reroll/column', to: 'scenario#reroll_column'

end
