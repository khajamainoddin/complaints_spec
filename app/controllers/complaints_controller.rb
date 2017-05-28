class ComplaintsController < ApplicationController
  def index
  	@complaints = Complaint.all
  end

  def new
  	@complaint = Complaint.new
  end

  def create
  	@complaint = Complaint.new(complaint_params)

  	if @complaint.save

  		flash[:notice] = "Complaint has been created."
  		redirect_to @complaint

  	else
         flash[:alert] = "Complaint has not been created."

         render "new"
  	 end

  end

  def edit
    @complaint = Complaint.find(params[:id])
  end

  def show
  	@complaint = Complaint.find(params[:id])
  end

  def update
    @complaint = Complaint.find(params[:id])
    if @complaint.update(complaint_params)

    flash[:notice] = "Complaint has been updated."
    redirect_to @complaint

  else

    flash[:alert] = "Complaint has not been updated."

    render "edit"
  end
end


def destroy
  @complaint = Complaint.find(params[:id])

  @complaint.destroy

  flash[:notice] = "Complaint has been destroyed."

  redirect_to complaints_path
  
end
  private

  def complaint_params

  	params.require(:complaint).permit(:name, :section, :problem)
  	
  end


end
