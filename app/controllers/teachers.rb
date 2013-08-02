get '/TeacherRole/:user_id' do
	if current_user
		@teacher = User.find(params[:user_id])
		erb :'/teachers/teacher_dashboard'
	else
		redirect '/page_does_not_exist'
	end
end