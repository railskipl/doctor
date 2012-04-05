class Patient < ActiveRecord::Base
  belongs_to :user
  has_many   :allergies
  has_many   :immunizations
  has_many   :problems
  has_many   :insurances
  has_many   :medications
  has_many   :procedures
  has_many   :results
  
  attr_accessible                :user_id, :name, :phone, :address_line_1, :address_line_2, :address_line_3, 
                                 :suffering_from, :patient_id , :allergies_attributes, :immunizations_attributes, :insurances_attributes,
                                 :problems_attributes, :procedures_attributes, :results_attributes, :medications_attributes
  
  accepts_nested_attributes_for  :allergies, :immunizations, :insurances,
                                 :problems, :procedures, :results, :medications
  validates_presence_of          :user_id, :name, :phone, :address_line_1, :address_line_2, :address_line_3, 
                                 :suffering_from

  validates_numericality_of      :phone
  validates_length_of            :phone, :in => 7..32  
end
