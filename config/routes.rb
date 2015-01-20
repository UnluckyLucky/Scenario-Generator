DfScenario::Application.routes.draw do
  
  root "scenario#index"

  get "game/:game", to: "scenario#show", as: 'generator'

end
