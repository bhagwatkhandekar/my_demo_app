class StudentsController < ApplicationController
	before_action :find_student, only: [:edit, :show, :update, :destroy]
	
	def index
		if params[:college_id].present?
			@students = College.find(params[:college_id]).students
		else
			@students = Student.all
		end
	end

	def new
		if params[:college_id].present?
			@students = College.find(params[:college_id]).students
		else
			@student = Student.new
		end
	end

	def edit
	end

	def create
		@student = Student.new(student_params)

		if @student.save
			p @student
			redirect_to @student
		else
			render 'new'
		end
	end

	def show
	end

	def update 
		if @student.update(student_params)
			redirect_to @student
		else
			render 'edit'
		end
	end

	def destroy
		@student.destroy
		redirect_to students_path
	end

	private 
	def student_params
		params.require(:student).permit(:firstname, :address, :age, :gender, :lastname, :email, :college_id)
	end

	def find_student
		@student =Student.find(params[:id])
	end
end