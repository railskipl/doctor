class HospitalsController < ApplicationController
  def index
      @a = current_user.id
      @hospitals = Hospital.find_by_user_id(params[:user_id => @a])
      # @hospital = Hospital.find_by_id(params[:name])
      respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hospitals }
    end
  end
  
  def show
  
    @hospital = Hospital.find_by_user_id(params[:id])
    @enquiry  = Enquiry.new
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hospital }
    end
  end
  
  def new
    @hospital= Hospital.new
      respond_to do |format|
       format.html # new.html.erb
       format.json { render json: @hospitals }
      end
  end
  
  def edit
    @hospital = Hospital.find_by_user_id(params[:id])
  end
  
  def update
    @hospital = Hospital.find(params[:id])
       respond_to do |format|
       if @hospital.update_attributes(params[:hospital])
          format.html { redirect_to hospitals_path, notice: 'Hospital was successfully updated.' }
          format.json { head k }
       else
          format.html { render action: "edit" }
          format.json { render json: @hospital.errors, status: :unprocessable_entity }
       end
    end
  end
  
  def create
    @hospital = Hospital.new(params[:hospital])

    respond_to do |format|
      if @hospital.save
        format.html { redirect_to hospitals_path, notice: 'Hospital was successfully created.' }
        format.json { render json: hospitals_path, status: :created, location: @hospital }
      else
        format.html { render action: "new" }
        format.json { render json: @hospital.errors, status: :unprocessable_entity }
      end
    end
  end
 def rate
    @hospital = Hospital.find(params[:id])
    @hospital.rate(params[:stars], current_user)
    render :update do |page|
      page.replace_html @hospital.wrapper_dom_id(params), ratings_for(@hospital, params.merge(:wrap => false))
      page.visual_effect :highlight, @hospital.wrapper_dom_id(params)
    end
  end
end
