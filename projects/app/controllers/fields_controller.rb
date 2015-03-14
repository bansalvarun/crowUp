class FieldsController < ApplicationController
	http_basic_authenticate_with name: "add", password: "secret", except: [:index, :show]
	http_basic_authenticate_with name: "delete", password: "secret", only: :destroy
	def index
    	@fields = Field.all
  	end
	def new
		@field = Field.new
	end
	def edit
  		@field = Field.find(params[:id])
	end
	def create
	  @field = Field.new(params.require(:field).permit(:title, :text))
	 
	  if @field.save
   		  redirect_to @field
   	  else
      		render 'new'
      end
	end
	def show
  	  @field = Field.find(params[:id])
    end
    def update
		@field = Field.find(params[:id]) 
		if @field.update(field_params)
			redirect_to @field
		else
			render 'edit'
		end
  	end
  	def destroy
	  @field = Field.find(params[:id])
	  @field.destroy
  	  redirect_to fields_path
	end
	
	private
	  def field_params
	    params.require(:field).permit(:title, :text)
	  end
end
