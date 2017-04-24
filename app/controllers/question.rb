#Create question on database
get'/question' do
  @user_login = current_user
  @last_survey = Survey.last
  
  erb :question
end

#Create a question on database
post '/create_question' do 
  question= params[:question]
  p "soy la ultima encuesta"
  p last_survey = Survey.last
  quest  = Question.new(survey_id: last_survey.id, question: question)
  if quest.save
    #I declare message for user, I can see it on view/layout
    session[:successfull] = 'Successfully created question'
    p "soy la pregunta creada:"
    p quest
    redirect to '/answer'
  else
    session[:error] = 'Error, try again'
    redirect to '/answer'
  end
end