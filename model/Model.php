<?php

	/**
	 * 
	 */

	include('model/master/MasterClass.php');
	class Model extends MasterClass
	{
		
		function __construct()
		{
			
		}

		Public function GetUsers(){

			$master = new MasterClass();
			$sql="select * from usuarios";
			$resultado = $master->getUsersSql($sql);
   			return $resultado;

   			

		}


		
	}


?>