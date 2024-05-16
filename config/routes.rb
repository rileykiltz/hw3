Rails.application.routes.draw do
  # Places routes
  get "/places", to: "places#index"
  get "/places/new", to: "places#new", as: "new_place"
  get "/places/:id", to: "places#show", as: "place"
  post "/places", to: "places#create"

  # Entries routes
  get "/places/:place_id/entries/new", to: "entries#new", as: "new_place_entry"
  post "/places/:place_id/entries", to: "entries#create", as: "place_entries"

  # Set the root path
  root "places#index"
end