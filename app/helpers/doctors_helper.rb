module DoctorsHelper
  def enquiry
    @d=Vaidya.id
    render "enquiries#new"
  end
end
