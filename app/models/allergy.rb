class Allergy < ActiveRecord::Base
  belongs_to :patients
  attr_accessible :patient_id, :allergic, :affect, :satrted, :ended, :severity, :journal_entry, :user_id
  
   
end
