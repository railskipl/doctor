class Vaidya < ActiveRecord::Base
   ajaxful_rateable              :allow_update => true
   has_and_belongs_to_many       :categories_ds
   belongs_to                    :user
   has_many                      :enquiries 
   accepts_nested_attributes_for :enquiries
   attr_accessible               :categories_d_ids, :name, :address_line_1, :address_line_2, :address_line_3, 
                                 :state, :city, :country, :contact_no, :fax_no, :website_url, :qualification, 
                                 :speciality, :affiliation, :awards, :user_id, :user_ids, :vaidya_id, :vaidya_ids
   validates_presence_of         :name,:categories_d_ids, :name, :address_line_1, :address_line_2, :address_line_3, 
                                 :state, :city, :country, :contact_no, :fax_no, :website_url, :qualification, 
                                 :speciality, :affiliation, :awards  
                            
   validates_numericality_of     :contact_no, :fax_no    
   validates_length_of           :fax_no, :in => 7..32
   validates_length_of           :contact_no, :in => 7..32   
   validates_format_of           :website_url, :with => /^(https?:\/\/)?[a-z0-9]+([-.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix, :on => :create                               
end 
