class AddStuffToGallery < ActiveRecord::Migration
  def change
    add_column :refinery_portfolio_galleries, :teaser, :string
  end
end
