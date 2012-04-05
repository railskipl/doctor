class SubCategoriesD < ActiveRecord::Base
  has_and_belongs_to_many           :categories_ds
  # Setup accessible (or protected) attributes for your model
  attr_accessible            :name, :categories_d_ids
end
