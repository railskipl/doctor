class Insurance < ActiveRecord::Base
  belongs_to :patient
   attr_accessible        :patient_id, :type_insurance, :comp_name, :plan_name, :plan_id, :group_no, :card_name,
                          :policy_id, :insure_phone, :start_date, :end_date, :journal_entry, :user_id
   
   validates_numericality_of :group_no
end
