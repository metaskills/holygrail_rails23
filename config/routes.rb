ActionController::Routing::Routes.draw do |map|
  
  map.resources :demos,
                :collection => { :goto_index => :get }
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
end
