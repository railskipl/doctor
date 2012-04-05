class Medication < ActiveRecord::Base
  belongs_to :patient
   attr_accessible       :patient_id, :medication, :take_medi, :started, :ended, :route, :strength, :how_many, :how_often,
                         :journal_entry, :user_id
   
end
