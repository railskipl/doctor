class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string   :name
      t.string   :email
      t.integer  :phone_no
      t.text     :message
      t.timestamps
    end
  end
end
