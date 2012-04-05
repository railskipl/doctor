class CreatePatients < ActiveRecord::Migration
  def change
    create_table      :patients do |t|
      t.string        :name
      t.integer       :phone
      t.string        :address_line_1
      t.string        :address_line_2
      t.string        :address_line_3
      t.string        :suffering_from
      


      t.timestamps
    end
  end
end
