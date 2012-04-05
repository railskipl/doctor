class Hospital < ActiveRecord::Base
  ajaxful_rateable             :allow_update => true
  belongs_to                   :user 
  has_many                     :enquiries
  attr_accessible              :user_id,:name, :address_line_1, :address_line_2, :address_line_3, :emergency_services,
                               :ambulance_contact, :pharmacy_details, :no_of_private_rooms, :no_of_wards,
                               :specialities, :doctor_list, :user_ids
  validates_presence_of        :name, :address_line_1, :address_line_2, :address_line_3, :emergency_services,
                               :ambulance_contact, :pharmacy_details, :no_of_private_rooms, :no_of_wards,
                               :specialities, :doctor_list
  validates_numericality_of    :ambulance_contact,:no_of_private_rooms, :no_of_wards                  
end
