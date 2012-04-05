class Immunization < ActiveRecord::Base
  belongs_to :patient
   attr_accessible :patient_id, :immu_name, :date, :journal_entry, :user_id  
   validates_presence_of :patient_id, :immu_name, :date, :journal_entry, :user_id  
end
