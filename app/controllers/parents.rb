get '/ParentRole/:user_id' do
	if current_user
		@parent = User.find(params[:user_id])
		erb :'/parents/parent_dashboard'
	else
		redirect '/page_does_not_exist'
	end
end

post "/parents/parent_profile/:user_id" do
	p params
	p params[:preferred_language]
	p params[:relationship_to_student]
		@parent = User.find(params[:user_id])
		p @parent.roles.first
		p @parent.roles.first.parent_profile
		@build = @parent.roles.first.build_parent_profile(preferred_language: params[:preferred_language], relationship_to_student: params[:relationship_to_student])
		@build.save
		p @parent.roles.first.parent_profile
		redirect "/ParentRole/#{@parent.id}"
end
