class Problem < ActiveRecord::Base
  belongs_to :patient
   attr_accessible        :patient_id, :symptom, :problem, :started, :ended, :journal_entry, :user_id
   validates_presence_of  :patient_id, :symptom, :problem, :started, :ended, :journal_entry, :user_id
   
end
