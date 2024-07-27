function myFunction() {

  var y = parseInt(document.getElementById("inputQuant").value);
  var x = document.getElementById("mySelect").value; 
  document.getElementById("precoFinal").innerHTML = "R$" +  x * y;
  }

