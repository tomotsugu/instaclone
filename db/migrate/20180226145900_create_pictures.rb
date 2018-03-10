class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :image
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
