module Refinery
  module HeroImages
    class HeroImage < Refinery::Core::BaseModel
      self.table_name = 'refinery_hero_images'

      attr_accessible :title, :photo_id, :position

      acts_as_indexed :fields => [:title]

      validates :title, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
