<?php
//hacemos el include 
include('model/Model.php');
class  IndexController extends Model
{

	function __construct(){

		
	}

	public function Listar(){

		

	   $array = [
		    "foo" => "bar",
		    "bar" => "foo",
		];


		echo json_encode($array);


		
		
	}

	public function Guardar(){

		$nombre = $_FILES['file-0'];

		var_dump($nombre);

		/*

		$array =[

				 "nombre" =>	 $_REQUEST['nombre'],

				 "apllido" =>	  $_REQUEST['apellido'],
			 ];



		echo json_encode($array);
*/


	}




}



?>