$(document).ready(function() {
  // #document.getElementById("create_quest2").style.visibility="hidden";
  $("#create_quest2").css("visibility", "hidden");

  $("#create_answer").on("submit", function(event){
    event.preventDefault();
    console.log("En create answer");
    
    var userInputAns = $(this).serialize(); 
    console.log(userInputAns);
    $.post("/create_answer", userInputAns, function(data) {
        $("#answer").html(data);
         
        console.log("entrñe al post de ansswer");
         
    });

  });//end of #create_answer
  

}); //END of document ready


$(document).on("click","#link_create_quest2", function(){
     event.preventDefault();
     console.log("Le di click al boton de Done with queston");
     $("#create_quest2").css("visibility", "visible");
     $("#create_answer").css("visibility", "hidden");
  });

$(document).off("submit").on("submit","#create_quest2", function(){
  event.preventDefault();
  console.log("Estoy en el segundo formulario de la pregunta");
  // var userInput = $(this).serialize(); 
  // console.log(userInput);
  // $.post("/create_question", userInput, function(data) {
  //   $("#answer").html(data);
  //   console.log("en  create question del segundo formulario");
  // });
});