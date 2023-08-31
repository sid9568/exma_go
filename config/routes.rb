Rails.application.routes.draw do
  root "exam/home#index"

  namespace :admin do
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



    end
  end


  namespace :exam do
    get 'program_offer/index'
    get 'papper_download/papper_don'
    get 'pg/index'
    get 'ug/index'
    get 'home/index'
  end
 
end
