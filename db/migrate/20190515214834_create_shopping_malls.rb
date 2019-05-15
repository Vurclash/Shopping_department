class CreateShoppingMalls < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_malls do |t|
      t.string :name

      t.timestamps
    end
  end
end
