Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :hero_images do
    resources :hero_images, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :hero_images, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :hero_images, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
