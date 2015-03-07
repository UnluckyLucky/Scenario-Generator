DfScenario::Application.routes.draw do

  root "scenario#index"

  get "game/:game_name", to: "scenario#show", as: 'generator'
  get 'game/:game_name/accept', to: 'scenario#accept', as: 'accept'
  get 'reroll/column', to: 'scenario#reroll_column'

  post 'game/:game_name/save', to: 'scenario#save', as: 'scenario_save'
  get 'game/:game_name/scenario/:uuid', to: 'scenario#load', as: 'scenario_load'

  post 'suggestion/:page_name', to: 'suggestion#submit', as: 'suggestion_submit'
  post 'subscribe/:page_name', to: 'alert#subscribe', as: 'alert_subscribe'

  get 'unsubscribe', to: 'alert#emails', as: 'alert_emails'
  post 'unsubscribe', to: 'alert#unsubscribe', as: 'alert_unsubscribe'

  get 'donators', to: 'donator#index', as: 'donator_index'
  get 'faq', to: 'static#faq', as: 'faq'

  get 'mailchimp_callback/:mailchimp_password', to: 'alert#mailchimp_callback', as: 'mailchimp_callback_get'
  post 'mailchimp_callback/:mailchimp_password', to: 'alert#mailchimp_callback', as: 'mailchimp_callback'

end
