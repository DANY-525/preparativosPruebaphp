var formulario = document.getElementById("formulario");


formulario.addEventListener('submit',function enviar(e){


		e.preventDefault();



		var datos   = new FormData(formulario);
		console.log(datos)

		console.log(datos.get('nombre'));
		console.log(datos.get('apellido'));



		fetch('http://localhost/modulophp/index.php?m=IndexController&f=Guardar',{

			method:'POST',
			body:datos
			  
			})

			.then(res => res.json())
			.then(data =>{

					console.log(data)

			})




});