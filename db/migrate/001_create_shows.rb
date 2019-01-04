class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows |t|
      t.string :name
      t.string :network
      t.string :day
      t.integer :rating
  end
end