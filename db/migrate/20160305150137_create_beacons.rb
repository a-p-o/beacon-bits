class CreateBeacons < ActiveRecord::Migration
  def change
    create_table :beacons do |t|
      t.string :serial
      t.string :details
      t.string :gps
      t.string :channel
      t.string :ip
      t.string :mac
      t.integer :signal_strength
      t.string :visible_networks
      t.decimal :ping
      t.decimal :up
      t.decimal :down

      t.timestamps null: false
    end
  end
end
