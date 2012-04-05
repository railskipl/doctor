class Procedure < ActiveRecord::Base
  belongs_to :patient
   attr_accessible        :patient_id, :surgery, :started, :ended, :journal_entry, :user_id
   validates_presence_of  :patient_id, :surgery, :started, :ended, :journal_entry, :user_id
end
