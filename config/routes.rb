Rails.application.routes.draw do
  jsonapi_resources :accounts
  jsonapi_resources :bodies
  jsonapi_resources :budgetary_positions
  jsonapi_resources :budgetary_groups
  jsonapi_resources :contains
  jsonapi_resources :decisions
  jsonapi_resources :disbursal_requests
  jsonapi_resources :drink_positions
  jsonapi_resources :financing_applications
  jsonapi_resources :form_elements
  jsonapi_resources :forms
  jsonapi_resources :fs_resolutions
  jsonapi_resources :inpayment_declarations
  jsonapi_resources :inventory_items
  jsonapi_resources :offer_comparisons
  jsonapi_resources :offers
  jsonapi_resources :options
  jsonapi_resources :selections
  jsonapi_resources :theoretikum_billings
  jsonapi_resources :throughs
  jsonapi_resources :users
  mount_ember_app :frontend, to: "/"
end
