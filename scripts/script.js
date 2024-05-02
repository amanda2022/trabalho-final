const form = document.getElementById("form");
   const campos = document.querySelectorAll(".required");
   const spans = document.querySelectorAll(".span-required");
  
  function setError(index){
  campos[index].style.border = "1px solid #e63636";
  spans[index].style.display = "block";

  }
  function removerError(index){
  campos[index].style.border = "";
  spans[index].style.display = "none";
  }


   function nameValidate(){
      if(campos[0].value.length < 6)
     {
       
          setError(0);
      }
      else
     
      {
        removerError(0);
      }
   }


   function CPFValidate(){
      if(campos[1].value.length > 11)
     {
       
          setError(1);
      }
      else
     
      {
        removerError(1);
      }

}


function placaValidate(){
      if(campos[5].value.length < 7)
     {
       
          setError(5);
      }
      else
     
      {
        removerError(5);
      }
   }