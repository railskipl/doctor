class PatientsController < ApplicationController
  def new
    @patient = Patient.new
     allergy = @patient.allergies
     immunization = @patient.immunizations
     insurance    = @patient.insurances
     problem = @patient.problems
     medication = @patient.medications
     procedure = @patient.procedures
     result = @patient.results
     
     # @patient.allergies.build
     # respond_to do |format|
      # format.html # new.html.erb
      # format.json { render json: @patient }
     # end
  end

  def index
      # @a = current_user.id
   @patients = Patient.find_by_id(params[:id])
      
  end

 def show
    @patient = Patient.find_by_user_id(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patient }
    end
  end
  def edit
    @patient = Patient.find_by_user_id(params[:id])
  end
  
   def update
    @patient = Patient.find(params[:id])
       respond_to do |format|
       if @patient.update_attributes(params[:patient])
          format.html { redirect_to patients_path, notice: 'Patient was successfully updated.' }
          format.json { head k }
       else
          format.html { render action: "edit" }
          format.json { render json: @patient.errors, status: :unprocessable_entity }
       end
    end
  end
  
  def create
    @patient = Patient.new(params[:patient])

    respond_to do |format|
      if @patient.save
        format.html { redirect_to patients_path, notice: 'Patient was successfully created.' }
        format.json { render json: patients_path, status: :created, location: @patient }
      else
        format.html { render action: "new" }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

end
