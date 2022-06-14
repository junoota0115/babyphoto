class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :text
      t.text :image
      t.string :setnumber_id,   null: false 

      t.timestamps
    end
  end
end
