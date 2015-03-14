class ProjectsController < ApplicationController
	def create
    @field = Field.find(params[:field_id])
    @project = @field.project.create(project_params)
    redirect_to field_path(@field)
  end
 
  private
    def project_params
      params.require(:project).permit(:project, :body)
    end
end
