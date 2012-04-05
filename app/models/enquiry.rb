class Enquiry < ActiveRecord::Base
  belongs_to               :vaidya
  belongs_to               :hospital
  attr_accessible          :name, :email, :phone_no, :message, :vaidya_ids, :vaidya_id, 
                           :hospital_ids, :hospital_id, :user_email
end
