get '/StudentRole/:user_id' do
	if current_user
		@student = User.find(params[:user_id])
		erb :'/students/student_dashboard'
	else
		redirect '/page_does_not_exist'
	end
end