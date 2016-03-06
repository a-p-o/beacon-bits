class AddSitesToBeacons < ActiveRecord::Migration
  def change
    add_column :beacons, :sites, :text
  end
end
