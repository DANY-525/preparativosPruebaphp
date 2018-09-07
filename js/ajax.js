



$(document).on('ready',function(){


		$( "#formulario" ).submit(function( event ) {
		 // alert( "Handler for .submit() called." );
		  event.preventDefault();

		  	var url="http://localhost/modulophp/index.php?m=IndexController&f=Guardar";


			$.ajax({


				type: "POST",
				url : url,
				data:$("#formulario").serialize(),
				success: function(response){


				 var json  = JSON.parse(response);
				 //console.log(json);

					console.log(json['nombre']);
			  


				}

			});

		});




});