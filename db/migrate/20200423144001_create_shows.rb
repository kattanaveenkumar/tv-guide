class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.integer :channel_id
      t.string :name
      t.datetime :start_time
      t.integer :end_time

      t.timestamps
    end
  end
end
