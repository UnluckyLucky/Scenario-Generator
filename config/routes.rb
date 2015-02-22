DfScenario::Application.routes.draw do
  
  root "scenario#index"

  get "game/:game_name", to: "scenario#show", as: 'generator'
  get 'game/:game_name/accept', to: 'scenario#accept', as: 'accept'
  get 'reroll/column', to: 'scenario#reroll_column'
  post 'suggestion/:page_name', to: 'suggestion#submit', as: 'suggestion_submit'
  post 'subscribe/:page_name', to: 'alert#subscribe', as: 'alert_subscribe'
  get 'unsubscribe', to: 'alert#emails', as: 'alert_emails'
  post 'unsubscribe', to: 'alert#unsubscribe', as: 'alert_unsubscribe'

end
