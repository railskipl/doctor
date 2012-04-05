class VaidyasHaveAndBelongToManyCategoriesDs < ActiveRecord::Migration
def self.up
      create_table   :categories_ds_vaidyas, :id => false do |t|
        t.references :categories_d, :vaidya
      end
    end
    def self.down
      drop_table     :categories_ds_vaidyas
    end
end
