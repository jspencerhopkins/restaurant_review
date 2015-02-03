class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :rating
      
      t.references :restaurants, index: true
      t.references :users, index: true

      t.timestamps null: false
    end
  end
end
