class Procedure < ActiveRecord::Base
  belongs_to :patient
   attr_accessible        :patient_id, :surgery, :started, :ended, :journal_entry, :user_id
   
end
