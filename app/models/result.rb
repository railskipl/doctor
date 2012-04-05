class Result < ActiveRecord::Base
   belongs_to             :patient
   attr_accessible        :patient_id, :test_name, :final_result, :unit, :date_test, :goal, :per_entry, :journal_entry, :user_id
   
end
