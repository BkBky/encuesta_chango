#seed table user
user1 = User.create(name: 'Bombo', email: 'b@gmail.com', password: '1')
user2 = User.create(name: 'Cirilo', email: 'c@gmail.com', password: '1')
user3 = User.create(name: 'Misha', email: 'm@gmail.com', password: '1')
#seed table sruvey
survey1 = Survey.create(user_id: user1.id, responder_id: user2.id, survey: 'Las biciletas en la ciudad')
survey2 = Survey.create(user_id: user2.id, responder_id: user3.id, survey: 'Horario de Verano')
survey3 = Survey.create(user_id: user3.id, responder_id: user1.id, survey: 'Mascotas en la CDMX')

#seed table question
quest1 = Question.create(survey_id: survey1.id, question: '¿Consideras que es peligroso andar en bici en la cdmx?')
quest2 = Question.create(survey_id: survey1.id, question: '¿Es urgente hacer programas de educación vial?')
quest3 = Question.create(survey_id: survey1.id, question: '¿Consideras que debe haber mayor presupuesto para hacer más ciclovías?')

quest4 = Question.create(survey_id: survey2.id, question: '¿Consideras que el horario de Verano es benéfico para el ahorro de energía?')
quest5 = Question.create(survey_id: survey2.id, question: '¿A qué porcentaje corresponde el ahorro de energía en casa?')
quest6 = Question.create(survey_id: survey2.id, question: '¿Duermes más tarde con el horario de verano?')

quest7 = Question.create(survey_id: survey3.id, question: '¿Qué tipo de mascotas tienes?')
quest8 = Question.create(survey_id: survey3.id, question: '¿Que porcentaje de tu presupuesto destinas para el mantenimiento de tus mascotas')
quest9 = Question.create(survey_id: survey3.id, question: '¿Tu mascota tiene una convivencia activa contigo?')


#seed table answer
answer1 = Answer.create(question_id: quest1.id, answer:'si')
answer2 = Answer.create(question_id: quest1.id, answer:'no')
answer3 = Answer.create(question_id: quest1.id, answer:'no se')
answer4 = Answer.create(question_id: quest2.id, answer:'si')
answer5 = Answer.create(question_id: quest2.id, answer:'no')
answer6 = Answer.create(question_id: quest2.id, answer:'no se')
answer7 = Answer.create(question_id: quest3.id, answer:'si')
answer8 = Answer.create(question_id: quest3.id, answer:'no')
answer9 = Answer.create(question_id: quest3.id, answer:'no se')

answer10 = Answer.create(question_id: quest4.id, answer:'si')
answer11 = Answer.create(question_id: quest4.id, answer:'no')
answer12 = Answer.create(question_id: quest4.id, answer:'no se')

answer13 = Answer.create(question_id: quest5.id, answer:'No hay, queda pago lo mismo')
answer14 = Answer.create(question_id: quest5.id, answer:'10-20%')
answer15 = Answer.create(question_id: quest5.id, answer:'Al contrario, se incremente el pago de energía')

answer16 = Answer.create(question_id: quest6.id, answer:'si')
answer17 = Answer.create(question_id: quest6.id, answer:'no')
answer18 = Answer.create(question_id: quest6.id, answer:'no sé')


answer19 = Answer.create(question_id: quest7.id, answer:'perro')
answer20 = Answer.create(question_id: quest7.id, answer:'gato')
answer21 = Answer.create(question_id: quest7.id, answer:'otro')

answer22 = Answer.create(question_id: quest8.id, answer:'0%')
answer23 = Answer.create(question_id: quest8.id, answer:'5-10%')
answer24 = Answer.create(question_id: quest8.id, answer:'Del 11% en adelante ')

answer25 = Answer.create(question_id: quest9.id, answer:'no')
answer26 = Answer.create(question_id: quest9.id, answer:'más o menos')
answer27 = Answer.create(question_id: quest9.id, answer:'sí')

#seed table user_surveys
                              
statistic1 = Statistic.create(survey_id: survey2.id, user_id: user1.id, answer_id: answer10.id)
statistic2 = Statistic.create(survey_id: survey2.id, user_id: user1.id, answer_id: answer13.id)
statistic3 = Statistic.create(survey_id: survey2.id, user_id: user1.id, answer_id: answer16.id)
statistic4 = Statistic.create(survey_id: survey3.id, user_id: user2.id, answer_id: answer19.id)
statistic5 = Statistic.create(survey_id: survey3.id, user_id: user2.id, answer_id: answer22.id)
statistic6 = Statistic.create(survey_id: survey3.id, user_id: user2.id, answer_id: answer25.id)
statistic7 = Statistic.create(survey_id: survey1.id, user_id: user3.id, answer_id: answer1.id)
statistic8 = Statistic.create(survey_id: survey1.id, user_id: user3.id, answer_id: answer4.id)
statistic9 = Statistic.create(survey_id: survey1.id, user_id: user3.id, answer_id: answer7.id)




























































































































































































































































































































































































































































































