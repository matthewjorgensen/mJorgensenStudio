Refinery::PagesController.class_eval do
    # your controller logic goes here
    #homepage
    before_filter :find_all_hero_images, :only => [:home]
        protected
          def find_all_hero_images
            @homepage_hero_items = Refinery::HeroImages::HeroImage.find(:all, :limit => 4, :order=> "position")
          end
  end