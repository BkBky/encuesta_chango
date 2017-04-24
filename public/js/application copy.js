
$(document).ready(function() {


  $("#create_question").on("submit", function(event){
    event.preventDefault();
    console.log("hola en quora 7");
    
    var userInput = $(this).serialize(); 
    console.log(userInput);
    $.post("/create_question", userInput, function(data) {
        $("#answer").html(data);


        // var counterAns = $("#counter_ans").attr("value");
        // console.log (counterAns);
         
    });
    $("#tip").remove();
    $("#create_question").remove();
  });//end of #create_question
  



  //hide button survey unless I have 5 questions on this survey
  // $(document).on("submit","#create_answer", function(){
  //   event.preventDefault();
  //   console.log("En create answer");
  //   var userInputAns = $(this).serialize(); 
  //   console.log(userInputAns);
  //   $.post("/create_answer", userInputAns, function(data) {
  //       $("#answer").html(data);
  //        var counterAns = $("#counter_ans").attr("value");
  //       console.log (counterAns);
         
  //     });
  //  }); // end #create answer
  
  // $("#create_question2").on( "click", function() {
  //     $('#target').show(); //muestro mediante id
  //     $('.target').show(); //muestro mediante clase
  //    });
  

}); //END of document ready






// .on ("submit", function(){}, );

// $(document).ready(function() {
//   function cargarDiv(div,url)
// {
//       $(div).load(url);
// }
// cargarDiv("#contenido","_prueba.erb");
// });
