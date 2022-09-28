Rails.application.routes.draw do
  root "home_page#home"
  post "/send", to: "home_page#send_mail"
end
