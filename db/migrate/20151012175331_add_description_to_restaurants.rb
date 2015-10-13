class AddDescriptionToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :description, :text
  end

  # same as

  def up
    add_column :restaurants, :description, :text
  end

  def down
    remove_column :restaurants, :description
  end
end
