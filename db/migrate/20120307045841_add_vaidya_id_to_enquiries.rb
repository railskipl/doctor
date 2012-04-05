class AddVaidyaIdToEnquiries < ActiveRecord::Migration
  def change
    add_column :enquiries, :vaidya_id, :integer
  end
end
