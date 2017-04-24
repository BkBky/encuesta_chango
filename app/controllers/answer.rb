#Create a survey on database

get '/answer' do 
  @current_question = Question.last
  # p "En answer"
  # question_id = current_question.id
  
  # @last_answers = Answer.where(question_id: question_id.to_i)
  # p @last_answers
  erb :_answer
  # erb :_answer, layout: true
end

get '/create_answer' do
  @current_question = Question.last
  erb :_create_question, layout:true
end

post '/create_answer' do
  p "en create answer post" 
  p new_answer = params[:answer]
   current_question = Question.last
   answer = Answer.new(question_id: current_question.id, answer: new_answer)


  if answer.save
    #I declare message for user, I can see it on view/layout
    session[:successfull] = 'Successfully created answer'
    p "soy la pregunta answer creada"
    p answer

    redirect to '/answer'
  else
    session[:error] = 'Error, try again'
    redirect to '/answer'
  end

end
