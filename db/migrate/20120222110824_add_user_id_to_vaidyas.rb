class AddUserIdToVaidyas < ActiveRecord::Migration
  def change
    add_column :vaidyas, :user_id, :integer
  end
end
