class CreateUserRatings < ActiveRecord::Migration
  def change
    create_table :user_ratings do |t|
      t.belongs_to :user, index: true
      t.integer :score
      t.belongs_to :game, index: true

      t.timestamps
    end
  end
end
