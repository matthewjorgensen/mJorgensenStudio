# This migration comes from refinery_hero_images (originally 1)
class CreateHeroImagesHeroImages < ActiveRecord::Migration

  def up
    create_table :refinery_hero_images do |t|
      t.string :title
      t.integer :photo_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-hero_images"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/hero_images/hero_images"})
    end

    drop_table :refinery_hero_images

  end

end
