Rails.application.routes.draw do
  root "statics#home"

  get  "/team",    to: "statics#team"
  get  "/contact", to: "statics#contact"
  get  "/thanks",  to: "statics#thanks"
  post "/contact", to: "inquiries#create"

  resources :members, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :games, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :news,    only: [:index, :show,:new, :create, :edit, :update, :destroy]
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end

