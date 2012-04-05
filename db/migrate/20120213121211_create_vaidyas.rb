class CreateVaidyas < ActiveRecord::Migration
  def change
    create_table   :vaidyas do |t|
      t.string     :name
      t.string     :address_line_1
      t.string     :address_line_2
      t.string     :address_line_3
      t.string     :state
      t.string     :city
      t.string     :country
      t.integer    :contact_no
      t.integer    :fax_no
      t.string     :website_url
      t.string     :qualification
      t.string     :speciality
      t.string     :affiliation
      t.string     :awards

      t.timestamps
    end
  end
end
