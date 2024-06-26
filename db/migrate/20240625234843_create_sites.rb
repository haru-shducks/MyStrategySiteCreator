class CreateSites < ActiveRecord::Migration[6.1]
  def change
    create_table :sites do |t|
      t.integer "user_id"
      t.string "name"
      t.timestamps
    end
  end
end
