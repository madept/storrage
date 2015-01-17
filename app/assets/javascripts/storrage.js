 function login(){
	  

       $.get("./login", {

    
	
     }, function(data) {
	//alert("done " + data);
	  console.log(" Html is " +data);
       $('#content').html(data);
   
     });


}
