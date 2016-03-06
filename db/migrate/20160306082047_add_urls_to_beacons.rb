class AddUrlsToBeacons < ActiveRecord::Migration
  def change
    add_column :beacons, :urls, :text
  end
end
