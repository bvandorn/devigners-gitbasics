class CreatePuppies < ActiveRecord::Migration
  def change
    create_table :puppies do |t|
      t.string :name
      t.string :image
      t.integer :age

      t.timestamps null: false
    end
  end
end
