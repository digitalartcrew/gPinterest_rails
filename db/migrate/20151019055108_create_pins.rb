class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :image
      t.string :url
      t.string :comment

      t.timestamps null: false
    end
  end
end
