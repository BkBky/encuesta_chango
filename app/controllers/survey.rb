get "/finish_survey" do
  @user_login = current_user

  erb :finish_survey
end

get '/show_survey/:survey_id' do
  survey_id = params[:survey_id]
  @user_login = current_user
  @survey = Survey.find(survey_id)
  erb :show_survey
end

#Create a survey on database
post '/create_survey' do 
  survey = params[:survey]
  p survey
  p "hola, en survey"
  survey  = Survey.new(user_id: current_user.id, survey: survey)

  
  #Id Survey vas save, redirect to secret view
   if survey.save
     #I declare message for user, I can see it on view/layout
     session[:successfull] = 'Successfully created survey'
     p "hola, soy el survey creado:"
     p survey
     redirect to '/question'
   else
    session[:error] = 'Error, try again'
    redirect to '/question'
  end
end
