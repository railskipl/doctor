class CategoriesD < ActiveRecord::Base
  has_and_belongs_to_many :vaidyas
  has_and_belongs_to_many :sub_categories_ds
  # Setup accessible (or protected) attributes for your model
  attr_accessible         :name, :sub_categories_d_ids, :categories_d_ids
end
