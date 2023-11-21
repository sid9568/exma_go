Rails.application.routes.draw do
  root "exam/home#index"

  namespace :admin do
    get 'porgram_offer_list/index'
    get 'porgram_offer_list/new'
    post 'porgram_offer_list/create'
    get 'porgram_offer_list/:id', to: 'porgram_offer_list#destroy', as: 'porgram_offer_list_destroy'
    get 'home/dashboard' , to: 'home#dashboard'
    get 'category/index'
    get 'category/new'
    get 'category/edit' 
    get  'category/update'

    post 'category/create'
    get 'category/:id', to: 'category#destroy', as: 'destroy_category'

    scope '/sub_category' do
    get 'sub_category/index'
    get 'sub_category/new'
    post 'sub_category/create'
    get 'program_offer/index'
    get 'program_offer/new'
    post 'program_offer/create'
    get 'program_offer/:id', to: 'program_offer#destroy', as: 'program_offer_destroy'
    get 'porgram/index'
    get 'porgram/new'
    post 'porgram/create'
    get 'porgram/:id', to: 'porgram#destroy', as: 'porgram_destroy'






    end
  end


  namespace :exam do
    get 'porgram/index'
    get 'program_offer/index'
    get 'papper_download/papper_don'
    get 'pg/index'
    get 'ug/index'
    get 'home/index'
    get 'porgram_offer_list/index'

  end
 
end

