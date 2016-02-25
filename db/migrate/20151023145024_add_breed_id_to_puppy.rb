class AddBreedIdToPuppy < ActiveRecord::Migration
  def change
    add_column :puppies, :breed_id, :integer
  end
end
