DfScenario::Application.routes.draw do
  
  root "scenario#index"

  get "game/:game", to: "scenario#show", as: 'generator'
  get 'game/:game/accept', to: 'scenario#accept', as: 'accept'
  get 'reroll/column', to: 'scenario#reroll_column'
  post 'subscribe', to: 'alert#subscribe', as: 'alert_subscribe'
  get 'unsubscribe', to: 'alert#emails', as: 'alert_emails'
  post 'unsubscribe', to: 'alert#unsubscribe', as: 'alert_unsubscribe'

end
