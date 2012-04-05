class CreateCategoriesDs < ActiveRecord::Migration
  def change
    create_table :categories_ds do |t|
      t.string :name

      t.timestamps
    end
  end
end
